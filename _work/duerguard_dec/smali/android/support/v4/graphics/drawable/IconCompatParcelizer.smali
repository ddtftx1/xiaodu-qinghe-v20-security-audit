.class public final Landroid/support/v4/graphics/drawable/IconCompatParcelizer;
.super Landroidx/core/graphics/drawable/IconCompatParcelizer;
.source "IconCompatParcelizer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;-><init>()V

    return-void
.end method

.method public static read(Lc/a/b;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 1
    .param p0, "parcel"    # Lc/a/b;

    .line 12
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->read(Lc/a/b;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Lc/a/b;)V
    .locals 0
    .param p0, "obj"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p1, "parcel"    # Lc/a/b;

    .line 16
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompatParcelizer;->write(Landroid/support/v4/graphics/drawable/IconCompat;Lc/a/b;)V

    .line 17
    return-void
.end method
