

# Global period constraint
create_clock -name clk -period 3.5 [get_ports clk]

# ce_2_c10bed9e_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_2_sg_x5]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x5]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x5]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1


# ce_4_c10bed9e_group and inner group constraint
set_property DONT_TOUCH true [get_nets ce_4_sg_x77]
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_4_sg_x77]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_4_sg_x77]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 4
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 3


# Group-to-group constraints
set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x5]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_4_sg_x77]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

set enCellsFrom [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_4_sg_x77]]]
set enCellsTo [get_cells -of [get_pins -leaf -filter is_enable -of [get_nets ce_2_sg_x5]]]
set_multicycle_path -from $enCellsFrom -to $enCellsTo -setup 2
set_multicycle_path -from $enCellsFrom -to $enCellsTo -hold 1

