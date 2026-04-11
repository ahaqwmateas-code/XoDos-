.class public interface abstract Lcom/termux/x11/IRemoteCmdImterface;
.super Ljava/lang/Object;
.source "IRemoteCmdImterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/IRemoteCmdImterface$Stub;,
        Lcom/termux/x11/IRemoteCmdImterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.termux.x11.IRemoteCmdImterface"


# virtual methods
.method public abstract exit(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
