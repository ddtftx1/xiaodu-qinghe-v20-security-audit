package android.support.v7.view.menu;

import android.view.Menu;

/* loaded from: classes.dex */
public class MenuBuilder implements Menu {

    public interface ItemInvoker {
        boolean invokeItem(MenuItemImpl menuItemImpl);
    }
}
