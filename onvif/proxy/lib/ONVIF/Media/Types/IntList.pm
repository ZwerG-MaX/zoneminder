package ONVIF::Media::Types::IntList;
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

my %Items_of :ATTR(:get<Items>);

__PACKAGE__->_factory(
    [ qw(        Items

    ) ],
    {
        'Items' => \%Items_of,
    },
    {
        'Items' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'Items' => 'Items',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::IntList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IntList from the namespace http://www.onvif.org/ver10/schema.

List of values.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Items




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::IntList
   Items =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

