package ONVIF::Device::Types::AttachmentData;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS = 'ONVIF::Device::Types::AttachmentData::_AttachmentData::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Include_of :ATTR(:get<Include>);

__PACKAGE__->_factory(
    [ qw(        Include

    ) ],
    {
        'Include' => \%Include_of,
    },
    {
        'Include' => 'ONVIF::Device::Elements::Include',

    },
    {

        'Include' => '',
    }
);

} # end BLOCK




package ONVIF::Device::Types::AttachmentData::_AttachmentData::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %contentType_of :ATTR(:get<contentType>);

__PACKAGE__->_factory(
    [ qw(
        contentType
    ) ],
    {

        contentType => \%contentType_of,
    },
    {

            contentType => 'ONVIF::Device::Attributes::contentType',
    }
);

} # end BLOCK




1;


=pod

=head1 NAME

ONVIF::Device::Types::AttachmentData

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AttachmentData from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Include

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::AttachmentData
   Include =>  { # ONVIF::Device::Types::Include
   },
 },



=head2 attr

NOTE: Attribute documentation is experimental, and may be inaccurate.
See the correspondent WSDL/XML Schema if in question.

This class has additional attributes, accessibly via the C<attr()> method.

attr() returns an object of the class ONVIF::Device::Types::AttachmentData::_AttachmentData::XmlAttr.

The following attributes can be accessed on this object via the corresponding
get_/set_ methods:

=over

=item * contentType




=back




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

