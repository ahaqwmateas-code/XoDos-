.class public Lcom/termux/x11/controller/ExternalControllerBindingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExternalControllerBindingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

.field private controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

.field private emptyTextView:Landroid/widget/TextView;

.field private profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    .line 38
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    .line 38
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    return-object v0
.end method

.method static synthetic access$800(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity;

    .line 38
    invoke-direct {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    return-void
.end method

.method private animateItemView(I)V
    .locals 5
    .param p1, "position"    # I

    .line 269
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;

    .line 270
    .local v0, "holder":Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 271
    sget v1, Lcom/termux/x11/R$color;->colorAccent:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 272
    .local v1, "color":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 273
    .local v2, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 274
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    new-instance v3, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 281
    .end local v1    # "color":I
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method

.method static synthetic lambda$animateItemView$0(Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;ILandroid/animation/ValueAnimator;)V
    .locals 6
    .param p0, "holder"    # Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;
    .param p1, "color"    # I
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 276
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 277
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 278
    return-void
.end method

.method private processJoystickInput()V
    .locals 11

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "keyCode":I
    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 100
    .local v1, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 101
    .local v3, "axes":[I
    iget-object v4, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v4, v4, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v4, v4, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLX:F

    iget-object v5, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v5, v5, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v5, v5, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbLY:F

    iget-object v6, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v6, v6, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v6, v6, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRX:F

    iget-object v7, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v7, v7, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    iget v7, v7, Lcom/termux/x11/controller/inputcontrols/GamepadState;->thumbRY:F

    iget-object v8, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v8, v8, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-virtual {v8}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->getDPadX()B

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v9, v9, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-virtual {v9}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->getDPadY()B

    move-result v9

    int-to-float v9, v9

    new-array v2, v2, [F

    const/4 v10, 0x0

    aput v4, v2, v10

    const/4 v4, 0x1

    aput v5, v2, v4

    const/4 v5, 0x2

    aput v6, v2, v5

    const/4 v5, 0x3

    aput v7, v2, v5

    const/4 v5, 0x4

    aput v8, v2, v5

    const/4 v5, 0x5

    aput v9, v2, v5

    .line 104
    .local v2, "values":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_b

    .line 105
    aget v6, v2, v5

    invoke-static {v6}, Lcom/termux/x11/controller/math/Mathf;->sign(F)B

    move-result v6

    move v7, v6

    .local v7, "sign":B
    if-eqz v6, :cond_a

    .line 106
    aget v6, v3, v5

    if-eqz v6, :cond_7

    aget v6, v3, v5

    const/16 v8, 0xb

    if-ne v6, v8, :cond_0

    goto :goto_5

    .line 109
    :cond_0
    aget v6, v3, v5

    if-eq v6, v4, :cond_5

    aget v4, v3, v5

    const/16 v6, 0xe

    if-ne v4, v6, :cond_1

    goto :goto_3

    .line 112
    :cond_1
    aget v4, v3, v5

    const/16 v6, 0xf

    if-ne v4, v6, :cond_3

    .line 113
    if-lez v7, :cond_2

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_D:Lcom/termux/x11/controller/inputcontrols/Binding;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_A:Lcom/termux/x11/controller/inputcontrols/Binding;

    :goto_1
    move-object v1, v4

    goto :goto_7

    .line 115
    :cond_3
    aget v4, v3, v5

    const/16 v6, 0x10

    if-ne v4, v6, :cond_9

    .line 116
    if-lez v7, :cond_4

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_S:Lcom/termux/x11/controller/inputcontrols/Binding;

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->KEY_W:Lcom/termux/x11/controller/inputcontrols/Binding;

    :goto_2
    move-object v1, v4

    goto :goto_7

    .line 110
    :cond_5
    :goto_3
    if-lez v7, :cond_6

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_DOWN:Lcom/termux/x11/controller/inputcontrols/Binding;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_UP:Lcom/termux/x11/controller/inputcontrols/Binding;

    :goto_4
    move-object v1, v4

    goto :goto_7

    .line 107
    :cond_7
    :goto_5
    if-lez v7, :cond_8

    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_RIGHT:Lcom/termux/x11/controller/inputcontrols/Binding;

    goto :goto_6

    :cond_8
    sget-object v4, Lcom/termux/x11/controller/inputcontrols/Binding;->MOUSE_MOVE_LEFT:Lcom/termux/x11/controller/inputcontrols/Binding;

    :goto_6
    move-object v1, v4

    .line 119
    :cond_9
    :goto_7
    aget v4, v3, v5

    invoke-static {v4, v7}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->getKeyCodeForAxis(IB)I

    move-result v0

    .line 120
    goto :goto_8

    .line 104
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    .end local v5    # "i":I
    .end local v7    # "sign":B
    :cond_b
    :goto_8
    invoke-direct {p0, v0, v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 125
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private updateControllerBinding(ILcom/termux/x11/controller/inputcontrols/Binding;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "binding"    # Lcom/termux/x11/controller/inputcontrols/Binding;

    .line 78
    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getControllerBinding(I)Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    move-result-object v0

    .line 82
    .local v0, "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    if-nez v0, :cond_1

    .line 83
    new-instance v1, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    invoke-direct {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;-><init>()V

    move-object v0, v1

    .line 84
    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->setKeyCode(I)V

    .line 85
    invoke-virtual {v0, p2}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 87
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->addControllerBinding(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V

    .line 88
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 89
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->adapter:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->notifyDataSetChanged()V

    .line 90
    invoke-direct {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    .line 91
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getPosition(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)I

    move-result v1

    .local v1, "position":I
    goto :goto_0

    .line 93
    .end local v1    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1, v0}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getPosition(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)I

    move-result v1

    move v2, v1

    .local v2, "position":I
    invoke-direct {p0, v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->animateItemView(I)V

    .line 94
    .end local v2    # "position":I
    .restart local v1    # "position":I
    :goto_0
    iget-object v2, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 95
    return-void
.end method

.method private updateEmptyTextView()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->emptyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->adapter:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v0, p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->updateStateFromMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v0, v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-direct {p0, v0, v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    iget-object v0, v0, Lcom/termux/x11/controller/inputcontrols/ExternalController;->state:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/inputcontrols/GamepadState;->isPressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x69

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-direct {p0, v0, v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->processJoystickInput()V

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    iget-object v1, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/termux/x11/controller/inputcontrols/Binding;->NONE:Lcom/termux/x11/controller/inputcontrols/Binding;

    invoke-direct {p0, v0, v1}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->updateControllerBinding(ILcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 142
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/termux/x11/R$layout;->external_controller_bindings_activity:I

    invoke-virtual {p0, v0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "profile_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, "profileId":I
    invoke-static {p0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->loadProfile(Landroid/content/Context;Ljava/io/File;)Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 53
    const-string v2, "controller_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "controllerId":Ljava/lang/String;
    iget-object v3, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v3, v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getController(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v3

    iput-object v3, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 56
    iget-object v3, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    if-nez v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v3, v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->addController(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v3

    iput-object v3, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 58
    iget-object v3, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->profile:Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {v3}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->save()V

    .line 61
    :cond_0
    sget v3, Lcom/termux/x11/R$id;->Toolbar:I

    invoke-virtual {p0, v3}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 62
    .local v3, "toolbar":Landroidx/appcompat/widget/Toolbar;
    iget-object v4, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->controller:Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-virtual {v4}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    invoke-virtual {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    .line 66
    .local v4, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    sget v6, Lcom/termux/x11/R$drawable;->icon_action_bar_back:I

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 69
    sget v6, Lcom/termux/x11/R$id;->TVEmptyText:I

    invoke-virtual {p0, v6}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->emptyTextView:Landroid/widget/TextView;

    .line 70
    sget v6, Lcom/termux/x11/R$id;->RecyclerView:I

    invoke-virtual {p0, v6}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v6, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iget-object v6, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v7, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    iget-object v6, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-direct {v7, p0, v5}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 73
    iget-object v5, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;-><init>(Lcom/termux/x11/controller/ExternalControllerBindingsActivity;Lcom/termux/x11/controller/ExternalControllerBindingsActivity$1;)V

    iput-object v6, p0, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->adapter:Lcom/termux/x11/controller/ExternalControllerBindingsActivity$ControllerBindingsAdapter;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    invoke-direct {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->updateEmptyTextView()V

    .line 75
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 149
    invoke-virtual {p0}, Lcom/termux/x11/controller/ExternalControllerBindingsActivity;->finish()V

    .line 150
    const/4 v0, 0x1

    return v0
.end method
