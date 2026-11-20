.class public abstract Ld/a/b/d$a;
.super Landroid/os/Binder;
.source "IDuerGuardManager.java"

# interfaces
.implements Ld/a/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.baidu.duerguard.IDuerGuardManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "com.baidu.duerguard.IDuerGuardManager"

    .line 41
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_0

    .line 102
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 45
    :cond_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v3

    .line 91
    :cond_1
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ld/a/b/e$a;->a(Landroid/os/IBinder;)Ld/a/b/e;

    move-result-object v5

    .line 95
    .local v5, "_arg0":Ld/a/b/e;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v7, p0

    check-cast v7, Ld/a/b/b;

    invoke-virtual {v7, v5, v6}, Ld/a/b/b;->a(Ld/a/b/e;Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v3

    .line 82
    .end local v5    # "_arg0":Ld/a/b/e;
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_2
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ld/a/b/c$a;->a(Landroid/os/IBinder;)Ld/a/b/c;

    move-result-object v5

    .line 85
    .local v5, "_arg0":Ld/a/b/c;
    move-object/from16 v6, p0

    check-cast v6, Ld/a/b/b;

    invoke-virtual {v6, v5}, Ld/a/b/b;->a(Ld/a/b/c;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v3

    .line 69
    .end local v5    # "_arg0":Ld/a/b/c;
    :cond_3
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ld/a/b/f$a;->a(Landroid/os/IBinder;)Ld/a/b/f;

    move-result-object v5

    .line 73
    .local v5, "_arg0":Ld/a/b/f;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 76
    .local v7, "_arg2":I
    move-object/from16 v8, p0

    check-cast v8, Ld/a/b/b;

    invoke-virtual {v8, v5, v6, v7}, Ld/a/b/b;->a(Ld/a/b/f;Ljava/lang/String;I)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v3

    .line 50
    .end local v5    # "_arg0":Ld/a/b/f;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :cond_4
    move-object/from16 v4, p3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 56
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v13, v3

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    move v13, v8

    .line 58
    .local v13, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 60
    .local v8, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 62
    .local v18, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 63
    .local v20, "_arg5":Ljava/lang/String;
    move-object/from16 v9, p0

    check-cast v9, Ld/a/b/b;

    move v10, v5

    move-wide v11, v6

    move v14, v8

    move-wide/from16 v15, v18

    move-object/from16 v17, v20

    invoke-virtual/range {v9 .. v17}, Ld/a/b/b;->a(IJZFDLjava/lang/String;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v3
.end method
