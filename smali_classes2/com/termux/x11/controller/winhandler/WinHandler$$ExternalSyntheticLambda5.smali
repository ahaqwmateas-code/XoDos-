.class public final synthetic Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/winhandler/WinHandler;ZZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iput-boolean p2, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$1:Z

    iput-boolean p3, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$3:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iput p5, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$0:Lcom/termux/x11/controller/winhandler/WinHandler;

    iget-boolean v1, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$1:Z

    iget-boolean v2, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v3, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$3:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    iget v4, p0, Lcom/termux/x11/controller/winhandler/WinHandler$$ExternalSyntheticLambda5;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/termux/x11/controller/winhandler/WinHandler;->lambda$sendGamepadState$12$com-termux-x11-controller-winhandler-WinHandler(ZZLcom/termux/x11/controller/inputcontrols/ControlsProfile;I)V

    return-void
.end method
