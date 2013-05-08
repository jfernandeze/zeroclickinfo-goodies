package DDG::Goodie::GreatestCommonFactor;
#Returns the greatest common factor of the two numbers entered

use DDG::Goodie;

zci answer_type => "greatest_common_factor";
zci is_cached => 1;

triggers startend => 'greatest common factor', 'GCF', 'gcf';

primary_example_queries 'GCF 121 11';
secondary_example_queries '99 9 greatest common factor';
description 'returns the greatest common factor of the two entered numbers';
name 'GreatestCommonFactor';
topics 'math';
category 'calculations';
attribution github => [ 'https://github.com/austinheimark', 'austin_heimark' ];

handle remainder => sub {
	sub gcf {
		my ($x, $y) = @_;
		($x, $y) = ($y, $x % $y) while $y;
		return $x;	
	}

	if ($_ =~ /^(\d+)\s(\d+)$/) {
		return 'Greatest common factor of ' . $1 . ' and ' . $2 . ': ' . gcf($1,$2);	
	} else {
		return;
}
	
};

1;
