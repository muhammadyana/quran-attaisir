


# README

***Require ruby 2.4.1 and Rails 5.1.6***
## Installation

* `cd attaisir`
* `bundle`

## Usage
* run console `rails c`
### Get surah 
``` ruby
ap Quran.get_surah(1)
``` 
will return surah Al-Fatihah,  and etch. Just change number of surah 
``` ruby
[
  [0] "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
  [1] "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
  [2] "الرَّحْمَٰنِ الرَّحِيمِ",
  [3] "مَالِكِ يَوْمِ الدِّينِ",
  [4] "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
  [5] "اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ",
  [6] "صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ"
]
```

### Get surah with ayah and number of ayah
``` ruby
ap Quran.get_random_ayah_with_number(surah)
```
``` ruby
    [
      [0] {
          :name_of_surah => "سورة الفاتحة"
      },
      [1] {
                   :ayah => "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
          :numberInSurah => 1
      },
      [2] {
                   :ayah => "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
          :numberInSurah => 2
      },
      [3] {
                   :ayah => "الرَّحْمَٰنِ الرَّحِيمِ",
          :numberInSurah => 3
      },
      [4] {
                   :ayah => "مَالِكِ يَوْمِ الدِّينِ",
          :numberInSurah => 4
      },
      [5] {
                   :ayah => "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
          :numberInSurah => 5
      },
      [6] {
                   :ayah => "اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ",
          :numberInSurah => 6
      },
      [7] {
                   :ayah => "صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ",
          :numberInSurah => 7
      }
    ]
```