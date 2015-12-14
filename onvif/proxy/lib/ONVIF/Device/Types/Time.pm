package ONVIF::Device::Types::Time;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Hour_of :ATTR(:get<Hour>);
my %Minute_of :ATTR(:get<Minute>);
my %Second_of :ATTR(:get<Second>);

__PACKAGE__->_factory(
    [ qw(        Hour
        Minute
        Second

    ) ],
    {
        'Hour' => \%Hour_of,
        'Minute' => \%Minute_of,
        'Second' => \%Second_of,
    },
    {
        'Hour' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Minute' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Second' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'Hour' => 'Hour',
        'Minute' => 'Minute',
        'Second' => 'Second',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::Time

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Time from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Hour


=item * Minute


=item * Second




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::Time
   Hour =>  $some_value, # int
   Minute =>  $some_value, # int
   Second =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

