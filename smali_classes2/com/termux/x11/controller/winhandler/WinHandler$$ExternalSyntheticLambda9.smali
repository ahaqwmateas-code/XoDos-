.class public final synthetic Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/winhandler/WinHandler;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iput-object p2, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iget-object v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda9;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/x11/controller/winhandler/WinHandler;->lambda$bringToFront$7$com-termux-x11-controller-winhandler-WinHandler(Ljava/lang/String;J)V

    return-void
.end method
