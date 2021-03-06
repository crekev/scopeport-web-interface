# This file is part of ScopePort (Web Interface).
#
# Copyright 2007, 2008 Lennart Koopmann
#
# ScopePort (Web Interface) is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ScopePort (Web Interface) is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ScopePort (Web Interface).  If not, see <http://www.gnu.org/licenses/>.

class CreateAlarms < ActiveRecord::Migration
  def self.up
		create_table :alarms do |t|
			t.integer :alarm_type, :timestamp
			t.integer :hostid, :default => 0
			t.integer :st, :default => 0
			t.integer :serviceid, :default => 0
			t.integer :ms, :default => 0
			t.float :sv, :default => 0
			t.boolean :status
		end
  end

  def self.down
		drop_table :alarms
  end
end
