.class public final Lcom/termux/x11/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ImagePickerView:[I

.field public static final ImagePickerView_activityTypeCode:I = 0x0

.field public static final NumberPicker:[I

.field public static final NumberPicker_maxValue:I = 0x0

.field public static final NumberPicker_minValue:I = 0x1

.field public static final NumberPicker_step:I = 0x2

.field public static final NumberPicker_textSize:I = 0x3

.field public static final NumberPicker_value:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const v0, 0x7f040028

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/termux/x11/R$styleable;->ImagePickerView:[I

    const v0, 0x7f0404a7

    const v1, 0x7f040504

    const v2, 0x7f040326

    const v3, 0x7f040333

    const v4, 0x7f04042b

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/termux/x11/R$styleable;->NumberPicker:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
