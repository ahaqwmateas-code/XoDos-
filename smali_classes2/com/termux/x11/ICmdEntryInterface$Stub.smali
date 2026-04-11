.class public abstract Lcom/termux/x11/ICmdEntryInterface$Stub;
.super Landroid/os/Binder;
.source "ICmdEntryInterface.java"

# interfaces
.implements Lcom/termux/x11/ICmdEntryInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/ICmdEntryInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/ICmdEntryInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getLogcatOutput:I = 0x2

.field static final TRANSACTION_getXConnection:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.termux.x11.ICmdEntryInterface"

    invoke-virtual {p0, p0, v0}, Lcom/termux/x11/ICmdEntryInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/termux/x11/ICmdEntryInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.termux.x11.ICmdEntryInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/termux/x11/ICmdEntryInterface;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/termux/x11/ICmdEntryInterface;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/termux/x11/ICmdEntryInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/termux/x11/ICmdEntryInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-string v0, "com.termux.x11.ICmdEntryInterface"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 65
    packed-switch p1, :pswitch_data_1

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 76
    :pswitch_1
    invoke-virtual {p0}, Lcom/termux/x11/ICmdEntryInterface$Stub;->getLogcatOutput()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 77
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-static {p3, v2, v1}, Lcom/termux/x11/ICmdEntryInterface$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 79
    goto :goto_0

    .line 69
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2
    invoke-virtual {p0}, Lcom/termux/x11/ICmdEntryInterface$Stub;->getXConnection()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 70
    .restart local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-static {p3, v2, v1}, Lcom/termux/x11/ICmdEntryInterface$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 72
    nop

    .line 86
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
