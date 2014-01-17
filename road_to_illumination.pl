#!/usr/bin/perl
=pod
    Copyright (c) 2012, Salesforce.com, Inc.
    All rights reserved.
    
    Redistribution and use in source and binary forms, with or without modification,
    are permitted provided that the following conditions are met:
    
    Redistributions of source code must retain the above copyright notice, this list
    of conditions and the following disclaimer. Redistributions in binary form must
    reproduce the above copyright notice, this list of conditions and the following
    disclaimer in the documentation and/or other materials provided with the
    distribution.
    
    Neither the name of salesforce.com, inc. nor the names of its contributors may be
    used to endorse or promote products derived from this software without specific
    prior written permission.
    
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
    ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
    OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
=cut

package Perl::Koans;

use strict;
use warnings;

use lib './lib';
use Perl::Koans qw(bail print_illumination);

our $VERSION = 0.60 . '-clean';

# TODO figure out why this block executing twice
BEGIN {
    # TODO parse params here..
    #   - if 0|1, toggle $solved
    #   - otherwise try to use that version of Perl
    my $solved = 0; # ~boolean
    my @scripts = ($solved) ? glob('*.pl') : glob('*.solved');

    for my $script (@scripts) {
        print "requiring: $script\n";
        require $script;
    }
}

# TODO
# 'about_context.pl'; # wantarray and it's implications
# 'about_oo.pl'; # bless, packaging, our vs. my
# 'about_dice_project.pl'; # not ready yet.. next release -- and really, would rather not use the same example
# 'about_project2.pl';
# 'about_lwp.pl';
# 'about_xml.pl'; # really thinking about_xml_simple.pl
# 'about_file_find.pl'; # good real world example of callbacks and sub refs

is (Perl::Koans::Koans::run(),      0, 'Perl::Koans::Koans'); # http://is.gd/C34W25
is (Perl::Koans::Truth::run(),      0, 'Perl::Koans::Truth'); 
is (Perl::Koans::Defined::run(),    0, 'Perl::Koans::Defined');
is (Perl::Koans::Variables::run(),  0, 'Perl::Koans::Variables'); 
is (Perl::Koans::Math::run(),       0, 'Perl::Koans::Math'); 
is (Perl::Koans::Time::run(),       0, 'Perl::Koans::Time'); 
is (Perl::Koans::IO::run(),         0, 'Perl::Koans::IO');
is (Perl::Koans::Functions::run(),  0, 'Perl::Koans::Functions');
is (Perl::Koans::Files::run(),      0, 'Perl::Koans::Files'); 
is (Perl::Koans::Scope::run(),      0, 'Perl::Koans::Scope');
is (Perl::Koans::Control::run(),    0, 'Perl::Koans::Control');
is (Perl::Koans::Loops::run(),      0, 'Perl::Koans::Loops');
is (Perl::Koans::Sort::run(),       0, 'Perl::Koans::Sort');
is (Perl::Koans::RE::run(),         0, 'Perl::Koans::RE');
is (Perl::Koans::Exceptions::run(), 0, 'Perl::Koans::Exceptions');
is (Perl::Koans::Perlvars::run(),   0, 'Perl::Koans::Perlvars');

print_illumination();

exit;
