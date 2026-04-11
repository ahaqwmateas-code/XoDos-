.class public final synthetic Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/winhandler/WinHandler;ZIZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iput-boolean p2, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$2:I

    iput-boolean p4, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$3:Z

    iput-object p5, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$4:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iput p6, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iget-boolean v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$1:Z

    iget v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$2:I

    iget-boolean v3, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$3:Z

    iget-object v4, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$4:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iget v5, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda3;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lcom/termux/x11/controller/winhandler/WinHandler;->lambda$handleRequest$10$com-termux-x11-controller-winhandler-WinHandler(ZIZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V

    return-void
.end method
