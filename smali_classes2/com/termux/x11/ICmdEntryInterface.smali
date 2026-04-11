.class public interface abstract Lcom/termux/x11/ICmdEntryInterface;
.super Ljava/lang/Object;
.source "ICmdEntryInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/ICmdEntryInterface$_Parcel;,
        Lcom/termux/x11/ICmdEntryInterface$Stub;,
        Lcom/termux/x11/ICmdEntryInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.termux.x11.ICmdEntryInterface"


# virtual methods
.method public abstract getLogcatOutput()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getXConnection()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
