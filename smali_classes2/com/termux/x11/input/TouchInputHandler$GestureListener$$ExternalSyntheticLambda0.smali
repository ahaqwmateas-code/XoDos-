.class public final synthetic Lcom/termux/x11/input/TouchInputHandler$GestureListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/input/TouchInputHandler$GestureListener;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/input/TouchInputHandler$GestureListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/input/TouchInputHandler$GestureListener;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/x11/input/TouchInputHandler$GestureListener$$ExternalSyntheticLambda0;->f$0:Lcom/termux/x11/input/TouchInputHandler$GestureListener;

    invoke-virtual {v0, p1}, Lcom/termux/x11/input/TouchInputHandler$GestureListener;->lambda$new$0$com-termux-x11-input-TouchInputHandler$GestureListener(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
