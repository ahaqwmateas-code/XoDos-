.class public Lcom/termux/shared/models/TextIOInfo;
.super Ljava/lang/Object;
.source "TextIOInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GENERAL_DATA_SIZE_LIMIT_IN_BYTES:I = 0x3e8

.field public static final LABEL_SIZE_LIMIT_IN_BYTES:I = 0xfa0

.field public static final TEXT_SIZE_LIMIT_IN_BYTES:I = 0x17318


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mEditingTextDisabled:Z

.field private mLabel:Ljava/lang/String;

.field private mLabelColor:I

.field private mLabelEnabled:Z

.field private mLabelSize:I

.field private mLabelTypeFaceFamily:Ljava/lang/String;

.field private mLabelTypeFaceStyle:I

.field private final mSender:Ljava/lang/String;

.field private mShowBackButtonInActionBar:Z

.field private mShowTextCharacterUsage:Z

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextHorizontallyScrolling:Z

.field private mTextLengthLimit:I

.field private mTextSize:I

.field private mTextTypeFaceFamily:Ljava/lang/String;

.field private mTextTypeFaceStyle:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowBackButtonInActionBar:Z

    .line 39
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelEnabled:Z

    .line 46
    const/16 v1, 0xe

    iput v1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelSize:I

    .line 48
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelColor:I

    .line 50
    const-string v2, "sans-serif"

    iput-object v2, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceFamily:Ljava/lang/String;

    .line 52
    const/4 v3, 0x1

    iput v3, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceStyle:I

    .line 61
    const/16 v3, 0xc

    iput v3, p0, Lcom/termux/shared/models/TextIOInfo;->mTextSize:I

    .line 63
    const v3, 0x17318

    iput v3, p0, Lcom/termux/shared/models/TextIOInfo;->mTextLengthLimit:I

    .line 65
    iput v1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextColor:I

    .line 67
    iput-object v2, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceFamily:Ljava/lang/String;

    .line 69
    iput v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceStyle:I

    .line 71
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextHorizontallyScrolling:Z

    .line 73
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowTextCharacterUsage:Z

    .line 75
    iput-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mEditingTextDisabled:Z

    .line 79
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mAction:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/termux/shared/models/TextIOInfo;->mSender:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelColor()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelColor:I

    return v0
.end method

.method public getLabelSize()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelSize:I

    return v0
.end method

.method public getLabelTypeFaceFamily()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelTypeFaceStyle()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceStyle:I

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextColor:I

    return v0
.end method

.method public getTextLengthLimit()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextLengthLimit:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextSize:I

    return v0
.end method

.method public getTextTypeFaceFamily()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypeFaceStyle()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceStyle:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEditingTextDisabled()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mEditingTextDisabled:Z

    return v0
.end method

.method public isHorizontallyScrollable()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mTextHorizontallyScrolling:Z

    return v0
.end method

.method public isLabelEnabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelEnabled:Z

    return v0
.end method

.method public setEditingTextDisabled(Z)V
    .locals 0
    .param p1, "editingTextDisabled"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mEditingTextDisabled:Z

    .line 232
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xfa0

    invoke-static {p1, v2, v0, v1, v1}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mLabel:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .param p1, "labelColor"    # I

    .line 140
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelColor:I

    .line 141
    return-void
.end method

.method public setLabelEnabled(Z)V
    .locals 0
    .param p1, "labelEnabled"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelEnabled:Z

    .line 116
    return-void
.end method

.method public setLabelSize(I)V
    .locals 0
    .param p1, "labelSize"    # I

    .line 131
    if-lez p1, :cond_0

    .line 132
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelSize:I

    .line 133
    :cond_0
    return-void
.end method

.method public setLabelTypeFaceFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelTypeFaceFamily"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceFamily:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setLabelTypeFaceStyle(I)V
    .locals 0
    .param p1, "labelTypeFaceStyle"    # I

    .line 156
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mLabelTypeFaceStyle:I

    .line 157
    return-void
.end method

.method public setShowBackButtonInActionBar(Z)V
    .locals 0
    .param p1, "showBackButtonInActionBar"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mShowBackButtonInActionBar:Z

    .line 107
    return-void
.end method

.method public setShowTextCharacterUsage(Z)V
    .locals 0
    .param p1, "showTextCharacterUsage"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mShowTextCharacterUsage:Z

    .line 224
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x17318

    invoke-static {p1, v2, v0, v1, v1}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/TextIOInfo;->mText:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 191
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextColor:I

    .line 192
    return-void
.end method

.method public setTextHorizontallyScrolling(Z)V
    .locals 0
    .param p1, "textHorizontallyScrolling"    # Z

    .line 215
    iput-boolean p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextHorizontallyScrolling:Z

    .line 216
    return-void
.end method

.method public setTextLengthLimit(I)V
    .locals 1
    .param p1, "textLengthLimit"    # I

    .line 182
    const v0, 0x17318

    if-ge p1, v0, :cond_0

    .line 183
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextLengthLimit:I

    .line 184
    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 173
    if-lez p1, :cond_0

    .line 174
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextSize:I

    .line 175
    :cond_0
    return-void
.end method

.method public setTextTypeFaceFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "textTypeFaceFamily"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceFamily:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setTextTypeFaceStyle(I)V
    .locals 0
    .param p1, "textTypeFaceStyle"    # I

    .line 207
    iput p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTextTypeFaceStyle:I

    .line 208
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/termux/shared/models/TextIOInfo;->mTitle:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public shouldShowBackButtonInActionBar()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowBackButtonInActionBar:Z

    return v0
.end method

.method public shouldShowTextCharacterUsage()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/termux/shared/models/TextIOInfo;->mShowTextCharacterUsage:Z

    return v0
.end method
