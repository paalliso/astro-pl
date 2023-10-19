use 5.012;
use open qw( :std :encoding(UTF-8) );
use warnings;
use DateTime;
use Switch;

my $LAT_DEFAULT = "40N";
my $LON_DEFAULT = "76W";
my $TIME_ZONE = "America/New_York";

# traditional 7
my $PRNT_SUN = "\x{2609}";
my $PRNT_MOON = "\N{U+263D}";
my $PRNT_MERCURY = "\N{U+263F}";
my $PRNT_VENUS = "\x{2640}";
my $PRNT_MARS = "\x{2642}";
my $PRNT_JUPITER = "\x{2643}";
my $PRNT_SATURN = "\x{2644}";

# extended objects
my $PRNT_EARTH = "\x{2641}";
my $PRNT_ANKH = "\x{2625}";
my $PRNT_HELM = "\x{2388}"; # ⎈ helm symbol
my $PRNT_TRI_HVN = "\x{2630}"; # ☰ TRIGRAM FOR HEAVEN
my $PRNT_TRI_LAKE = "\x{2631}"; # ☱ TRIGRAM FOR LAKE
my $PRNT_TRI_FIRE = "\x{2632}"; # ☲ TRIGRAM FOR FIRE
my $PRNT_TRI_THNDR = "\x{2633}"; # ☳ TRIGRAM FOR THUNDER
my $PRNT_TRI_WIND = "\x{2634}"; # ☴ TRIGRAM FOR WIND
my $PRNT_TRI_WATER = "\x{2635}"; # ☵ TRIGRAM FOR WATER
my $PRNT_TRI_MNTN = "\x{2636}"; # ☶ TRIGRAM FOR MOUNTAIN
my $PRNT_TRI_EARTH = "\x{2637}"; # ☷ TRIGRAM FOR EARTH

# formating strings
my $date_fmt = "%a %b %d, %Y";
my $time_fmt = "$date_fmt %H:%M:%S";

print "\n\n ==> START: time.pl... \n\n";

# begin by getting current time
my $current = DateTime->now;
$current->set_time_zone($TIME_ZONE);
print "Current Date and Time: ", $current->strftime($time_fmt) , "\n"; 

# declarations
my $day;
my $end;

# use this later on to print out current positions
print "Sun: $PRNT_SUN | ";
print "Moon: $PRNT_MOON | ";
print "Mercury: $PRNT_MERCURY | ";
print "Venus: $PRNT_VENUS | ";
print "Mars: $PRNT_MARS | ";
print "Jupiter: $PRNT_JUPITER | ";
print "Saturn: $PRNT_SATURN \n";
# print "Earth: $PRNT_EARTH \n";
print "\n\n";

# Function that prints a list of dates
#    arg1: StartDate
#    arg2: NumDays
#sub Average {
   # get total number of arguments passed.
   #$n = scalar(@_);
   #$sum = 0;
   #foreach $item (@_) {
   #   $sum += $item;
   #}
   #$average = $sum / $n;
   #print "Average for the given numbers : $average\n";
#}

#
# main switch over days of week
#
print " $PRNT_ANKH I know the hours and the days. \n";
print " $PRNT_ANKH ============================== \n";
switch ($current->day_abbr) {
    case "Sun"  
    { 
        print "Sunday Sovreignty \n";
        print "I'd like to see the progression of the sun over the next x days. \n";
        print "Also, maybe the movement of the Sun over the next x weeks. \n";
        
        $day = $current;
        $end = $current->clone->add( weeks => 10 );
        while ($day <= $end) {
            print "$PRNT_SUN [ ] ", $day->strftime($date_fmt), " \n";
            $day->add( weeks => 1 );   # move along to next week
        }      
    }
    case "Mon"  
    { 
        print " $PRNT_ANKH Monday Healing \n";
        print " $PRNT_ANKH Know the sign of the Moon. Know its phases. See where it fits into your week. \n";
    }
    case "Tue"  
    { 
        print " $PRNT_ANKH Tuesday Guidance \n";
        print " $PRNT_ANKH It would be good to take a look at Mars. \n"; 
    }
    case "Wed"  
    { 
        print " $PRNT_ANKH Wednesday Wisdom \n";
        print " $PRNT_ANKH What is Mercury doing? \n"; 
        print " $PRNT_ANKH \n"; 
        print " $PRNT_ANKH Mercury goes retrograde frequently. \n"; 
    }
    case "Thu"  
    { 
        print " $PRNT_ANKH Thursday Magic \n";
        print " $PRNT_ANKH Jupiter over time. \n"; 
    }
    case "Fri"  
    { 
        print " $PRNT_ANKH Friday Purity \n";
        print " $PRNT_ANKH Venus cycles. \n"; 
    }
    case "Sat"  
    { 
         print " $PRNT_ANKH Saturday Cultivation \n";
         print " $PRNT_ANKH Some things take time... \n"; 
    }
    else        
    { 
        die "ERROR";
    }
}

print "\n\n\n ==> END: time.pl\n\n\n";



## END FILE
