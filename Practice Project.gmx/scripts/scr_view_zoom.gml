//scr_view_zoom(amount, view)
amount = 1+argument[0]
view = argument[1]

//Limit how much player can zoom
if (view_wview[view] <= 64 && amount < 1) exit;
if (view_hview[view] >= 1280 && amount > 1) exit;

//Get the offset
offx = abs(view_wview[view]*amount - view_wview[view])
offy = abs(view_hview[view]*amount - view_hview[view])

//Scale the view
view_wview[view] *= amount
view_hview[view] *= amount

//Adjust the view
if (amount < 1) {
    view_xview[view] += offx/2
    view_yview[view] += offx/2
} else if (amount > 1) {
    view_xview[view] -= offx/2
    view_yview[view] -= offx/2
}
