<?php

namespace Database\Seeders;

use App\Models\Acquiring;
use App\Models\Auth;
use App\Models\Avatar;
use App\Models\Ban;
use App\Models\Chapter;
use App\Models\Chapter_review;
use App\Models\Chapter_review_like;
use App\Models\Comic;
use App\Models\Comic_creator;
use App\Models\Comic_genre;
use App\Models\Comic_name;
use App\Models\Comic_rating;
use App\Models\Comic_reading_status;
use App\Models\Comic_review;
use App\Models\Comic_type;
use App\Models\Creator;
use App\Models\Creator_role;
use App\Models\Frame;
use App\Models\Genre;
use App\Models\Like_chapter;
use App\Models\Reading_status;
use App\Models\Release_status;
use App\Models\User;
use App\Models\Role;
use App\Models\Subscription;
use App\Models\Subscription_price;
use App\Models\Translate_status;
use App\Models\User_subscription;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    protected $classes = [
        "Acquiring"            => Acquiring::class,
        "Auth"                 => Auth::class,
        "Ban"                  => Ban::class,
        "User"                 => User::class,
        "Role"                 => Role::class,
        "Avatar"               => Avatar::class,
        "Comic"                => Comic::class,
        "Genre"                => Genre::class,
        "Comic_genre"          => Comic_genre::class,
        "Comic_type"           => Comic_type::class,
        "Comic_rating"         => Comic_rating::class,
        "Chapter"              => Chapter::class,
        "Chapter_review"       => Chapter_review::class,
        "Chapter_review_like"  => Chapter_review_like::class,
        "Frame"                => Frame::class,
        "Release_status"       => Release_status::class,
        "Subscription"         => Subscription::class,
        "Subscription_price"   => Subscription_price::class,
        "User_subscription"    => User_subscription::class,
        "Translate_status"     => Translate_status::class,
        "Comic_name"           => Comic_name::class,
        "Comic_reading_status" => Comic_reading_status::class,
        "Comic_review"         => Comic_review::class,
        "Creator_role"         => Creator_role::class,
        "Creator"              => Creator::class,
        "Comic_creator"        => Comic_creator::class,
        "Like_chapter"         => Like_chapter::class,
        "Reading_status"       => Reading_status::class
    ];
    public function run(): void
    {
        $seederDataPaths = explode(',', env("SEEDER_DATA_FILE_PATH"));

        foreach ($seederDataPaths as $seederDataPath)
            $this->seed($seederDataPath);
    }
    public function seed($seederDataPath) {
        if (!file_exists($seederDataPath)) {
            $this->command->error("Database seeder data not found...");
            return;
        }

        $this->command->info("Database seeder data is found. Run seeding file '$seederDataPath'...");

        $databaseSeederData = json_decode(file_get_contents($seederDataPath));

        foreach ($databaseSeederData as $rootTable => $rootData) {
            $this->recursiveRead($rootTable, $rootData);
        }
    }
    public function recursiveRead(string $rootTable, array|object $rootData): int | null
    {
        if (!is_object($rootData)) {
            foreach ($rootData as $childrenData) {
                $this->recursiveRead($rootTable, $childrenData);
            }
            return null;
        }

        $class = $this->classes[$rootTable];
        $fields_to_save = [];
        $field_name_to_mass = null;
        $mass_is_table = false;
        foreach ($rootData as $field => $value) {
            $field_length = strlen($field);
            if ($field[$field_length - 1] == 's' && !array_key_exists($field, $this->classes)) {
                $field = substr($field, 0, $field_length - 1);
                $field_name_to_mass = $field;
            }
            $slugs = preg_split('/(?<=[a-z])(?=[A-Z])/u', $field);
            if (count($slugs) > 1 || $this->isLower($field)) {
                $slugs = array_map("strtolower", $slugs);
                $slugsField_name = join("_", [...$slugs, "id"]);
                if ($field_name_to_mass == $field) {
                    $mass_is_table = $field;
                    $field_name_to_mass = $slugsField_name;
                }
                $fields_to_save[$slugsField_name] = $mass_is_table != $field ? $this->recursiveRead($field, $value) : $value;
                continue;
            }
            $fields_to_save[$field] = $value;
        }

        if ($field_name_to_mass != null) {
            foreach ($fields_to_save[$field_name_to_mass] as $value)
                $class::firstOrCreate([
                    ...$fields_to_save,
                    $field_name_to_mass => $mass_is_table ? $this->recursiveRead($mass_is_table, $value) : $value
                ]);
            return null;
        }

        return $class::firstOrCreate($fields_to_save)->id;
    }
    public function isLower($str)
    {
        $chr = mb_substr ($str, 0, 1, "UTF-8");
        return mb_strtolower($chr, "UTF-8") != $chr;
    }
}
