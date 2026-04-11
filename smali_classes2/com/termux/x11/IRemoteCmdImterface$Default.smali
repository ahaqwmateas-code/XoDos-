.class public Lcom/termux/x11/IRemoteCmdImterface$Default;
.super Ljava/lang/Object;
.source "IRemoteCmdImterface.java"

# interfaces
.implements Lcom/termux/x11/IRemoteCmdImterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/IRemoteCmdImterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public exit(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "output"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
