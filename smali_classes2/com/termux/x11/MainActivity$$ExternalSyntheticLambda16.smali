.class public final synthetic Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda16;->f$0:Lcom/termux/x11/MainActivity;

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$$ExternalSyntheticLambda16;->f$0:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/termux/x11/MainActivity;->lambda$onCreate$5$com-termux-x11-MainActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
