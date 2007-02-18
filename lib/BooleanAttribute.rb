#
# BooleanAttribute.rb - TaskJuggler
#
# Copyright (c) 2006, 2007 by Chris Schlaeger <cs@kde.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#
# $Id$
#

require 'AttributeBase'

class BooleanAttribute < AttributeBase
  def initialize(property, type)
    super(property, type)
  end

  def to_s
    @value ? 'true' : 'false'
  end

  def to_tjp
    @type.id + ' ' + (@value ? 'yes' : 'no')
  end

end
