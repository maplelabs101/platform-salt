# Schema definitions for Whisper files. Entries are scanned in order,
# and first match wins. This file is scanned for changes every 60 seconds.
#
#  [name]
#  pattern = regex
#  retentions = timePerPoint:timeToStore, timePerPoint:timeToStore, ...

# Carbon's internal metrics. This entry should match what is specified in
# CARBON_METRIC_PREFIX and CARBON_METRIC_INTERVAL settings

[kafka]
pattern = ^kafka\..*
retentions = 60:43200

[hadoop]
pattern = ^hadoop\..*
retentions = 60:43200

[deployment-manager]
pattern = ^deployment-manager\..*
retentions = 60:43200

[zookeeper]
pattern = ^zookeeper\..*
retentions = 60:43200

[application]
pattern = ^application\..*
retentions = 60:43200

[spark]
pattern = ^spark\..*
retentions = {{ retentions }}

[default]
pattern = .*
retentions = 60:1440
