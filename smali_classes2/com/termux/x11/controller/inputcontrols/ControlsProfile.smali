.class public Lcom/termux/x11/controller/inputcontrols/ControlsProfile;
.super Ljava/lang/Object;
.source "ControlsProfile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/termux/x11/controller/inputcontrols/ControlsProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final controllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ExternalController;",
            ">;"
        }
    .end annotation
.end field

.field private controllersLoaded:Z

.field private cursorSpeed:F

.field private final elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ControlElement;",
            ">;"
        }
    .end annotation
.end field

.field private elementsLoaded:Z

.field private gamepadState:Lcom/termux/x11/controller/inputcontrols/GamepadState;

.field public final id:I

.field private final immutableElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/x11/controller/inputcontrols/ControlElement;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private virtualGamepad:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->cursorSpeed:F

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->immutableElements:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 29
    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 30
    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 35
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    .line 36
    iput p2, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    .line 37
    return-void
.end method

.method public static getProfileFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/termux/x11/controller/inputcontrols/InputControlsManager;->getProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controls-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".icp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addController(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getController(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v0

    .line 66
    .local v0, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getController(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ExternalController;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 68
    return-object v0
.end method

.method public addElement(Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 146
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 148
    return-void
.end method

.method public compareTo(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)I
    .locals 2
    .param p1, "o"    # Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    .line 98
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    iget v1, p1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;

    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->compareTo(Lcom/termux/x11/controller/inputcontrols/ControlsProfile;)I

    move-result p1

    return p1
.end method

.method public getController(I)Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .locals 3
    .param p1, "deviceId"    # I

    .line 84
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 86
    .local v1, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    .end local v1    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    :cond_1
    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getController(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 77
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 79
    .local v1, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v1}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .end local v1    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    :cond_1
    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCursorSpeed()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->cursorSpeed:F

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/x11/controller/inputcontrols/ControlElement;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->immutableElements:Ljava/util/List;

    return-object v0
.end method

.method public getGamepadState()Lcom/termux/x11/controller/inputcontrols/GamepadState;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->gamepadState:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/termux/x11/controller/inputcontrols/GamepadState;

    invoke-direct {v0}, Lcom/termux/x11/controller/inputcontrols/GamepadState;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->gamepadState:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->gamepadState:Lcom/termux/x11/controller/inputcontrols/GamepadState;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isElementsLoaded()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elementsLoaded:Z

    return v0
.end method

.method public isTemplate()Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isVirtualGamepad()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->virtualGamepad:Z

    return v0
.end method

.method public loadControllers()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/termux/x11/controller/inputcontrols/ExternalController;",
            ">;"
        }
    .end annotation

    .line 164
    const-string v0, "controllers"

    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z

    .line 167
    iget-object v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v2, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v1, v2}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 168
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0

    .line 171
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/termux/x11/controller/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0

    .line 173
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 174
    .local v0, "controllersJSONArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 175
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 176
    .local v4, "controllerJSONObject":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "id":Ljava/lang/String;
    new-instance v6, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    invoke-direct {v6}, Lcom/termux/x11/controller/inputcontrols/ExternalController;-><init>()V

    .line 178
    .local v6, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v6, v5}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->setId(Ljava/lang/String;)V

    .line 179
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->setName(Ljava/lang/String;)V

    .line 181
    const-string v7, "controllerBindings"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 182
    .local v7, "controllerBindingsJSONArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 183
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 184
    .local v9, "controllerBindingJSONObject":Lorg/json/JSONObject;
    new-instance v10, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;

    invoke-direct {v10}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;-><init>()V

    .line 185
    .local v10, "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    const-string v11, "keyCode"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->setKeyCode(I)V

    .line 186
    const-string v11, "binding"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/termux/x11/controller/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;->setBinding(Lcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 187
    invoke-virtual {v6, v10}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->addControllerBinding(Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;)V

    .line 182
    .end local v9    # "controllerBindingJSONObject":Lorg/json/JSONObject;
    .end local v10    # "controllerBinding":Lcom/termux/x11/controller/inputcontrols/ExternalControllerBinding;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 189
    .end local v8    # "j":I
    :cond_2
    iget-object v8, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    nop

    .end local v4    # "controllerJSONObject":Lorg/json/JSONObject;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .end local v7    # "controllerBindingsJSONArray":Lorg/json/JSONArray;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "controllersJSONArray":Lorg/json/JSONArray;
    .end local v2    # "profileJSONObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 195
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadElements(Lcom/termux/x11/controller/widget/InputControlsView;)V
    .locals 18
    .param p1, "inputControlsView"    # Lcom/termux/x11/controller/widget/InputControlsView;

    .line 199
    move-object/from16 v1, p0

    const-string v0, "orientation"

    const-string v2, "range"

    const-string v3, "backgroundColor"

    const-string v4, "customIconId"

    const-string v5, "cheatCodeText"

    iget-object v6, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 200
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 201
    iput-boolean v6, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 203
    iget-object v6, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v7, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v6, v7}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v6

    .line 204
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 207
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/termux/x11/controller/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    .local v7, "profileJSONObject":Lorg/json/JSONObject;
    const-string v8, "elements"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 209
    .local v8, "elementsJSONArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    .line 210
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 211
    .local v10, "elementJSONObject":Lorg/json/JSONObject;
    new-instance v12, Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v13, p1

    :try_start_1
    invoke-direct {v12, v13}, Lcom/termux/x11/controller/inputcontrols/ControlElement;-><init>(Lcom/termux/x11/controller/widget/InputControlsView;)V

    .line 212
    .local v12, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    const-string v14, "type"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;->valueOf(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setType(Lcom/termux/x11/controller/inputcontrols/ControlElement$Type;)V

    .line 213
    const-string v14, "shape"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;->valueOf(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setShape(Lcom/termux/x11/controller/inputcontrols/ControlElement$Shape;)V

    .line 214
    const-string v14, "toggleSwitch"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v14}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setToggleSwitch(Z)V

    .line 215
    const-string v14, "x"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxWidth()I

    move-result v11
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "profileJSONObject":Lorg/json/JSONObject;
    .local v16, "file":Ljava/io/File;
    .local v17, "profileJSONObject":Lorg/json/JSONObject;
    int-to-double v6, v11

    mul-double v14, v14, v6

    double-to-int v6, v14

    :try_start_2
    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setX(I)V

    .line 216
    const-string v6, "y"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/termux/x11/controller/widget/InputControlsView;->getMaxHeight()I

    move-result v11

    int-to-double v14, v11

    mul-double v6, v6, v14

    double-to-int v6, v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setY(I)V

    .line 217
    const-string v6, "scale"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setScale(F)V

    .line 218
    const-string v6, "text"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setText(Ljava/lang/String;)V

    .line 219
    const-string v6, "iconId"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setIconId(I)V

    .line 220
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setCheatCodeText(Ljava/lang/String;)V

    .line 223
    :cond_1
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setCustomIconId(Ljava/lang/String;)V

    .line 226
    :cond_2
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 227
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setBackgroundColor(I)V

    .line 229
    :cond_3
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 230
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;->valueOf(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setRange(Lcom/termux/x11/controller/inputcontrols/ControlElement$Range;)V

    .line 231
    :cond_4
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 232
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v12, v6}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setOrientation(B)V

    .line 234
    :cond_5
    const/4 v6, 0x1

    .line 235
    .local v6, "hasGamepadBinding":Z
    const-string v7, "bindings"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 236
    .local v7, "bindingsJSONArray":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v11, v14, :cond_7

    .line 237
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/termux/x11/controller/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v14

    .line 238
    .local v14, "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/termux/x11/controller/inputcontrols/Binding;->fromString(Ljava/lang/String;)Lcom/termux/x11/controller/inputcontrols/Binding;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->setBindingAt(ILcom/termux/x11/controller/inputcontrols/Binding;)V

    .line 239
    invoke-virtual {v14}, Lcom/termux/x11/controller/inputcontrols/Binding;->isGamepad()Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v6, 0x0

    .line 236
    .end local v14    # "binding":Lcom/termux/x11/controller/inputcontrols/Binding;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 242
    .end local v11    # "j":I
    :cond_7
    iget-boolean v11, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->virtualGamepad:Z

    if-nez v11, :cond_8

    if-eqz v6, :cond_8

    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->virtualGamepad:Z

    .line 243
    :cond_8
    iget-object v11, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    nop

    .end local v6    # "hasGamepadBinding":Z
    .end local v7    # "bindingsJSONArray":Lorg/json/JSONArray;
    .end local v10    # "elementJSONObject":Lorg/json/JSONObject;
    .end local v12    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    goto/16 :goto_0

    .line 246
    .end local v8    # "elementsJSONArray":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v16    # "file":Ljava/io/File;
    .end local v17    # "profileJSONObject":Lorg/json/JSONObject;
    .local v6, "file":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 209
    .local v7, "profileJSONObject":Lorg/json/JSONObject;
    .restart local v8    # "elementsJSONArray":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    :cond_9
    move-object/from16 v13, p1

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 245
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "profileJSONObject":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .restart local v16    # "file":Ljava/io/File;
    .restart local v17    # "profileJSONObject":Lorg/json/JSONObject;
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elementsLoaded:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    .end local v8    # "elementsJSONArray":Lorg/json/JSONArray;
    .end local v17    # "profileJSONObject":Lorg/json/JSONObject;
    goto :goto_4

    .line 246
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v16    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v13, p1

    :goto_2
    move-object/from16 v16, v6

    .line 247
    .end local v6    # "file":Ljava/io/File;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v16    # "file":Ljava/io/File;
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 249
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-void
.end method

.method public removeController(Lcom/termux/x11/controller/inputcontrols/ExternalController;)V
    .locals 1
    .param p1, "controller"    # Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 72
    iget-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->loadControllers()Ljava/util/ArrayList;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public removeElement(Lcom/termux/x11/controller/inputcontrols/ControlElement;)V
    .locals 1
    .param p1, "element"    # Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 151
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elementsLoaded:Z

    .line 153
    return-void
.end method

.method public save()V
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->context:Landroid/content/Context;

    iget v1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-static {v0, v1}, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->getProfileFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "id"

    iget v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v2, "name"

    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v2, "cursorSpeed"

    iget v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->cursorSpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 115
    .local v2, "elementsJSONArray":Lorg/json/JSONArray;
    iget-boolean v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elementsLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "elements"

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/termux/x11/controller/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move-object v2, v5

    .end local v3    # "profileJSONObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/x11/controller/inputcontrols/ControlElement;

    .line 119
    .local v5, "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    invoke-virtual {v5}, Lcom/termux/x11/controller/inputcontrols/ControlElement;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 118
    .end local v5    # "element":Lcom/termux/x11/controller/inputcontrols/ControlElement;
    :cond_1
    :goto_1
    nop

    .line 120
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v3, "controllersJSONArray":Lorg/json/JSONArray;
    iget-boolean v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllersLoaded:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "controllers"

    if-nez v4, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/termux/x11/controller/core/FileUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, "profileJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v3, v6

    .line 127
    .end local v4    # "profileJSONObject":Lorg/json/JSONObject;
    :cond_2
    goto :goto_3

    .line 128
    :cond_3
    iget-object v4, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/termux/x11/controller/inputcontrols/ExternalController;

    .line 129
    .local v6, "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    invoke-virtual {v6}, Lcom/termux/x11/controller/inputcontrols/ExternalController;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 130
    .local v7, "controllerJSONObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_4

    .line 131
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    .end local v6    # "controller":Lcom/termux/x11/controller/inputcontrols/ExternalController;
    .end local v7    # "controllerJSONObject":Lorg/json/JSONObject;
    :cond_4
    goto :goto_2

    .line 134
    :cond_5
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/termux/x11/controller/core/FileUtils;->writeString(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    nop

    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "elementsJSONArray":Lorg/json/JSONArray;
    .end local v3    # "controllersJSONArray":Lorg/json/JSONArray;
    goto :goto_4

    .line 137
    :catch_0
    move-exception v1

    .line 139
    :goto_4
    return-void
.end method

.method public setCursorSpeed(F)V
    .locals 0
    .param p1, "cursorSpeed"    # F

    .line 52
    iput p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->cursorSpeed:F

    .line 53
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/termux/x11/controller/inputcontrols/ControlsProfile;->name:Ljava/lang/String;

    return-object v0
.end method
