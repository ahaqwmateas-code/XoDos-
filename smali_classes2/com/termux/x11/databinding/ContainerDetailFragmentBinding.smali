.class public final Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;
.super Ljava/lang/Object;
.source "ContainerDetailFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final BTAddDrive:Landroid/widget/Button;

.field public final BTAddEnvVar:Landroid/widget/Button;

.field public final BTConfirm:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final BTDXWrapperConfig:Landroid/widget/ImageButton;

.field public final BTGraphicsDriverConfig:Landroid/widget/ImageButton;

.field public final BTHelpDXWrapper:Landroid/widget/ImageView;

.field public final CBShowFPS:Landroid/widget/CheckBox;

.field public final CBStopServicesOnStartup:Landroid/widget/CheckBox;

.field public final CPUListView:Lcom/termux/x11/controller/widget/CPUListView;

.field public final CPVDesktopBackgroundColor:Lcom/termux/x11/controller/widget/ColorPickerView;

.field public final ETName:Landroid/widget/EditText;

.field public final ETScreenHeight:Landroid/widget/EditText;

.field public final ETScreenWidth:Landroid/widget/EditText;

.field public final IPVDesktopBackgroundImage:Lcom/termux/x11/controller/widget/ImagePickerView;

.field public final LLCustomScreenSize:Landroid/widget/LinearLayout;

.field public final LLDrives:Landroid/widget/LinearLayout;

.field public final LLEnvVars:Landroid/widget/LinearLayout;

.field public final LLTabAdvanced:Landroid/widget/LinearLayout;

.field public final LLTabDrives:Landroid/widget/LinearLayout;

.field public final LLTabEnvVars:Landroid/widget/LinearLayout;

.field public final LLTabWinComponents:Landroid/widget/LinearLayout;

.field public final LLTabWineConfiguration:Landroid/widget/LinearLayout;

.field public final LLWineVersion:Landroid/widget/LinearLayout;

.field public final SAudioDriver:Landroid/widget/Spinner;

.field public final SBox64Preset:Landroid/widget/Spinner;

.field public final SBox86Preset:Landroid/widget/Spinner;

.field public final SCSMT:Landroid/widget/Spinner;

.field public final SDXWrapper:Landroid/widget/Spinner;

.field public final SDesktopBackgroundType:Landroid/widget/Spinner;

.field public final SDesktopTheme:Landroid/widget/Spinner;

.field public final SGPUName:Landroid/widget/Spinner;

.field public final SGraphicsDriver:Landroid/widget/Spinner;

.field public final SMouseWarpOverride:Landroid/widget/Spinner;

.field public final SOffscreenRenderingMode:Landroid/widget/Spinner;

.field public final SScreenSize:Landroid/widget/Spinner;

.field public final SStrictShaderMath:Landroid/widget/Spinner;

.field public final SVideoMemorySize:Landroid/widget/Spinner;

.field public final SWineVersion:Landroid/widget/Spinner;

.field public final TVDrivesEmptyText:Landroid/widget/TextView;

.field public final TVEnvVarsEmptyText:Landroid/widget/TextView;

.field public final TabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/termux/x11/controller/widget/CPUListView;Lcom/termux/x11/controller/widget/ColorPickerView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/termux/x11/controller/widget/ImagePickerView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "BTAddDrive"    # Landroid/widget/Button;
    .param p3, "BTAddEnvVar"    # Landroid/widget/Button;
    .param p4, "BTConfirm"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p5, "BTDXWrapperConfig"    # Landroid/widget/ImageButton;
    .param p6, "BTGraphicsDriverConfig"    # Landroid/widget/ImageButton;
    .param p7, "BTHelpDXWrapper"    # Landroid/widget/ImageView;
    .param p8, "CBShowFPS"    # Landroid/widget/CheckBox;
    .param p9, "CBStopServicesOnStartup"    # Landroid/widget/CheckBox;
    .param p10, "CPUListView"    # Lcom/termux/x11/controller/widget/CPUListView;
    .param p11, "CPVDesktopBackgroundColor"    # Lcom/termux/x11/controller/widget/ColorPickerView;
    .param p12, "ETName"    # Landroid/widget/EditText;
    .param p13, "ETScreenHeight"    # Landroid/widget/EditText;
    .param p14, "ETScreenWidth"    # Landroid/widget/EditText;
    .param p15, "IPVDesktopBackgroundImage"    # Lcom/termux/x11/controller/widget/ImagePickerView;
    .param p16, "LLCustomScreenSize"    # Landroid/widget/LinearLayout;
    .param p17, "LLDrives"    # Landroid/widget/LinearLayout;
    .param p18, "LLEnvVars"    # Landroid/widget/LinearLayout;
    .param p19, "LLTabAdvanced"    # Landroid/widget/LinearLayout;
    .param p20, "LLTabDrives"    # Landroid/widget/LinearLayout;
    .param p21, "LLTabEnvVars"    # Landroid/widget/LinearLayout;
    .param p22, "LLTabWinComponents"    # Landroid/widget/LinearLayout;
    .param p23, "LLTabWineConfiguration"    # Landroid/widget/LinearLayout;
    .param p24, "LLWineVersion"    # Landroid/widget/LinearLayout;
    .param p25, "SAudioDriver"    # Landroid/widget/Spinner;
    .param p26, "SBox64Preset"    # Landroid/widget/Spinner;
    .param p27, "SBox86Preset"    # Landroid/widget/Spinner;
    .param p28, "SCSMT"    # Landroid/widget/Spinner;
    .param p29, "SDXWrapper"    # Landroid/widget/Spinner;
    .param p30, "SDesktopBackgroundType"    # Landroid/widget/Spinner;
    .param p31, "SDesktopTheme"    # Landroid/widget/Spinner;
    .param p32, "SGPUName"    # Landroid/widget/Spinner;
    .param p33, "SGraphicsDriver"    # Landroid/widget/Spinner;
    .param p34, "SMouseWarpOverride"    # Landroid/widget/Spinner;
    .param p35, "SOffscreenRenderingMode"    # Landroid/widget/Spinner;
    .param p36, "SScreenSize"    # Landroid/widget/Spinner;
    .param p37, "SStrictShaderMath"    # Landroid/widget/Spinner;
    .param p38, "SVideoMemorySize"    # Landroid/widget/Spinner;
    .param p39, "SWineVersion"    # Landroid/widget/Spinner;
    .param p40, "TVDrivesEmptyText"    # Landroid/widget/TextView;
    .param p41, "TVEnvVarsEmptyText"    # Landroid/widget/TextView;
    .param p42, "TabLayout"    # Lcom/google/android/material/tabs/TabLayout;

    .line 176
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->rootView:Landroid/widget/FrameLayout;

    .line 178
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->BTAddDrive:Landroid/widget/Button;

    .line 179
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->BTAddEnvVar:Landroid/widget/Button;

    .line 180
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->BTConfirm:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 181
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->BTDXWrapperConfig:Landroid/widget/ImageButton;

    .line 182
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->BTGraphicsDriverConfig:Landroid/widget/ImageButton;

    .line 183
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->BTHelpDXWrapper:Landroid/widget/ImageView;

    .line 184
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->CBShowFPS:Landroid/widget/CheckBox;

    .line 185
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->CBStopServicesOnStartup:Landroid/widget/CheckBox;

    .line 186
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->CPUListView:Lcom/termux/x11/controller/widget/CPUListView;

    .line 187
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->CPVDesktopBackgroundColor:Lcom/termux/x11/controller/widget/ColorPickerView;

    .line 188
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->ETName:Landroid/widget/EditText;

    .line 189
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->ETScreenHeight:Landroid/widget/EditText;

    .line 190
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->ETScreenWidth:Landroid/widget/EditText;

    .line 191
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->IPVDesktopBackgroundImage:Lcom/termux/x11/controller/widget/ImagePickerView;

    .line 192
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLCustomScreenSize:Landroid/widget/LinearLayout;

    .line 193
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLDrives:Landroid/widget/LinearLayout;

    .line 194
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLEnvVars:Landroid/widget/LinearLayout;

    .line 195
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLTabAdvanced:Landroid/widget/LinearLayout;

    .line 196
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLTabDrives:Landroid/widget/LinearLayout;

    .line 197
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLTabEnvVars:Landroid/widget/LinearLayout;

    .line 198
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLTabWinComponents:Landroid/widget/LinearLayout;

    .line 199
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLTabWineConfiguration:Landroid/widget/LinearLayout;

    .line 200
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->LLWineVersion:Landroid/widget/LinearLayout;

    .line 201
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SAudioDriver:Landroid/widget/Spinner;

    .line 202
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SBox64Preset:Landroid/widget/Spinner;

    .line 203
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SBox86Preset:Landroid/widget/Spinner;

    .line 204
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SCSMT:Landroid/widget/Spinner;

    .line 205
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SDXWrapper:Landroid/widget/Spinner;

    .line 206
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SDesktopBackgroundType:Landroid/widget/Spinner;

    .line 207
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SDesktopTheme:Landroid/widget/Spinner;

    .line 208
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SGPUName:Landroid/widget/Spinner;

    .line 209
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SGraphicsDriver:Landroid/widget/Spinner;

    .line 210
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SMouseWarpOverride:Landroid/widget/Spinner;

    .line 211
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SOffscreenRenderingMode:Landroid/widget/Spinner;

    .line 212
    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SScreenSize:Landroid/widget/Spinner;

    .line 213
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SStrictShaderMath:Landroid/widget/Spinner;

    .line 214
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SVideoMemorySize:Landroid/widget/Spinner;

    .line 215
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->SWineVersion:Landroid/widget/Spinner;

    .line 216
    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->TVDrivesEmptyText:Landroid/widget/TextView;

    .line 217
    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->TVEnvVarsEmptyText:Landroid/widget/TextView;

    .line 218
    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 219
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;
    .locals 87
    .param p0, "rootView"    # Landroid/view/View;

    .line 248
    move-object/from16 v0, p0

    sget v1, Lcom/termux/x11/R$id;->BTAddDrive:I

    .line 249
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 250
    .local v2, "BTAddDrive":Landroid/widget/Button;
    if-eqz v2, :cond_28

    .line 254
    sget v1, Lcom/termux/x11/R$id;->BTAddEnvVar:I

    .line 255
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Landroid/widget/Button;

    .line 256
    .local v46, "BTAddEnvVar":Landroid/widget/Button;
    if-eqz v46, :cond_27

    .line 260
    sget v1, Lcom/termux/x11/R$id;->BTConfirm:I

    .line 261
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v47, v3

    check-cast v47, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 262
    .local v47, "BTConfirm":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v47, :cond_26

    .line 266
    sget v1, Lcom/termux/x11/R$id;->BTDXWrapperConfig:I

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v48, v3

    check-cast v48, Landroid/widget/ImageButton;

    .line 268
    .local v48, "BTDXWrapperConfig":Landroid/widget/ImageButton;
    if-eqz v48, :cond_25

    .line 272
    sget v1, Lcom/termux/x11/R$id;->BTGraphicsDriverConfig:I

    .line 273
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v49, v3

    check-cast v49, Landroid/widget/ImageButton;

    .line 274
    .local v49, "BTGraphicsDriverConfig":Landroid/widget/ImageButton;
    if-eqz v49, :cond_24

    .line 278
    sget v1, Lcom/termux/x11/R$id;->BTHelpDXWrapper:I

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v50, v3

    check-cast v50, Landroid/widget/ImageView;

    .line 280
    .local v50, "BTHelpDXWrapper":Landroid/widget/ImageView;
    if-eqz v50, :cond_23

    .line 284
    sget v1, Lcom/termux/x11/R$id;->CBShowFPS:I

    .line 285
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Landroid/widget/CheckBox;

    .line 286
    .local v51, "CBShowFPS":Landroid/widget/CheckBox;
    if-eqz v51, :cond_22

    .line 290
    sget v1, Lcom/termux/x11/R$id;->CBStopServicesOnStartup:I

    .line 291
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v52, v3

    check-cast v52, Landroid/widget/CheckBox;

    .line 292
    .local v52, "CBStopServicesOnStartup":Landroid/widget/CheckBox;
    if-eqz v52, :cond_21

    .line 296
    sget v1, Lcom/termux/x11/R$id;->CPUListView:I

    .line 297
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Lcom/termux/x11/controller/widget/CPUListView;

    .line 298
    .local v53, "CPUListView":Lcom/termux/x11/controller/widget/CPUListView;
    if-eqz v53, :cond_20

    .line 302
    sget v1, Lcom/termux/x11/R$id;->CPVDesktopBackgroundColor:I

    .line 303
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v54, v3

    check-cast v54, Lcom/termux/x11/controller/widget/ColorPickerView;

    .line 304
    .local v54, "CPVDesktopBackgroundColor":Lcom/termux/x11/controller/widget/ColorPickerView;
    if-eqz v54, :cond_1f

    .line 308
    sget v1, Lcom/termux/x11/R$id;->ETName:I

    .line 309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v55, v3

    check-cast v55, Landroid/widget/EditText;

    .line 310
    .local v55, "ETName":Landroid/widget/EditText;
    if-eqz v55, :cond_1e

    .line 314
    sget v1, Lcom/termux/x11/R$id;->ETScreenHeight:I

    .line 315
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v56, v3

    check-cast v56, Landroid/widget/EditText;

    .line 316
    .local v56, "ETScreenHeight":Landroid/widget/EditText;
    if-eqz v56, :cond_1d

    .line 320
    sget v1, Lcom/termux/x11/R$id;->ETScreenWidth:I

    .line 321
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v57, v3

    check-cast v57, Landroid/widget/EditText;

    .line 322
    .local v57, "ETScreenWidth":Landroid/widget/EditText;
    if-eqz v57, :cond_1c

    .line 326
    sget v1, Lcom/termux/x11/R$id;->IPVDesktopBackgroundImage:I

    .line 327
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v58, v3

    check-cast v58, Lcom/termux/x11/controller/widget/ImagePickerView;

    .line 328
    .local v58, "IPVDesktopBackgroundImage":Lcom/termux/x11/controller/widget/ImagePickerView;
    if-eqz v58, :cond_1b

    .line 332
    sget v1, Lcom/termux/x11/R$id;->LLCustomScreenSize:I

    .line 333
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v59, v3

    check-cast v59, Landroid/widget/LinearLayout;

    .line 334
    .local v59, "LLCustomScreenSize":Landroid/widget/LinearLayout;
    if-eqz v59, :cond_1a

    .line 338
    sget v1, Lcom/termux/x11/R$id;->LLDrives:I

    .line 339
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v60, v3

    check-cast v60, Landroid/widget/LinearLayout;

    .line 340
    .local v60, "LLDrives":Landroid/widget/LinearLayout;
    if-eqz v60, :cond_19

    .line 344
    sget v1, Lcom/termux/x11/R$id;->LLEnvVars:I

    .line 345
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v61, v3

    check-cast v61, Landroid/widget/LinearLayout;

    .line 346
    .local v61, "LLEnvVars":Landroid/widget/LinearLayout;
    if-eqz v61, :cond_18

    .line 350
    sget v1, Lcom/termux/x11/R$id;->LLTabAdvanced:I

    .line 351
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v62, v3

    check-cast v62, Landroid/widget/LinearLayout;

    .line 352
    .local v62, "LLTabAdvanced":Landroid/widget/LinearLayout;
    if-eqz v62, :cond_17

    .line 356
    sget v1, Lcom/termux/x11/R$id;->LLTabDrives:I

    .line 357
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v63, v3

    check-cast v63, Landroid/widget/LinearLayout;

    .line 358
    .local v63, "LLTabDrives":Landroid/widget/LinearLayout;
    if-eqz v63, :cond_16

    .line 362
    sget v1, Lcom/termux/x11/R$id;->LLTabEnvVars:I

    .line 363
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v64, v3

    check-cast v64, Landroid/widget/LinearLayout;

    .line 364
    .local v64, "LLTabEnvVars":Landroid/widget/LinearLayout;
    if-eqz v64, :cond_15

    .line 368
    sget v1, Lcom/termux/x11/R$id;->LLTabWinComponents:I

    .line 369
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v65, v3

    check-cast v65, Landroid/widget/LinearLayout;

    .line 370
    .local v65, "LLTabWinComponents":Landroid/widget/LinearLayout;
    if-eqz v65, :cond_14

    .line 374
    sget v1, Lcom/termux/x11/R$id;->LLTabWineConfiguration:I

    .line 375
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v66, v3

    check-cast v66, Landroid/widget/LinearLayout;

    .line 376
    .local v66, "LLTabWineConfiguration":Landroid/widget/LinearLayout;
    if-eqz v66, :cond_13

    .line 380
    sget v1, Lcom/termux/x11/R$id;->LLWineVersion:I

    .line 381
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v67, v3

    check-cast v67, Landroid/widget/LinearLayout;

    .line 382
    .local v67, "LLWineVersion":Landroid/widget/LinearLayout;
    if-eqz v67, :cond_12

    .line 386
    sget v1, Lcom/termux/x11/R$id;->SAudioDriver:I

    .line 387
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v68, v3

    check-cast v68, Landroid/widget/Spinner;

    .line 388
    .local v68, "SAudioDriver":Landroid/widget/Spinner;
    if-eqz v68, :cond_11

    .line 392
    sget v1, Lcom/termux/x11/R$id;->SBox64Preset:I

    .line 393
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v69, v3

    check-cast v69, Landroid/widget/Spinner;

    .line 394
    .local v69, "SBox64Preset":Landroid/widget/Spinner;
    if-eqz v69, :cond_10

    .line 398
    sget v1, Lcom/termux/x11/R$id;->SBox86Preset:I

    .line 399
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v70, v3

    check-cast v70, Landroid/widget/Spinner;

    .line 400
    .local v70, "SBox86Preset":Landroid/widget/Spinner;
    if-eqz v70, :cond_f

    .line 404
    sget v1, Lcom/termux/x11/R$id;->SCSMT:I

    .line 405
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v71, v3

    check-cast v71, Landroid/widget/Spinner;

    .line 406
    .local v71, "SCSMT":Landroid/widget/Spinner;
    if-eqz v71, :cond_e

    .line 410
    sget v1, Lcom/termux/x11/R$id;->SDXWrapper:I

    .line 411
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v72, v3

    check-cast v72, Landroid/widget/Spinner;

    .line 412
    .local v72, "SDXWrapper":Landroid/widget/Spinner;
    if-eqz v72, :cond_d

    .line 416
    sget v1, Lcom/termux/x11/R$id;->SDesktopBackgroundType:I

    .line 417
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v73, v3

    check-cast v73, Landroid/widget/Spinner;

    .line 418
    .local v73, "SDesktopBackgroundType":Landroid/widget/Spinner;
    if-eqz v73, :cond_c

    .line 422
    sget v1, Lcom/termux/x11/R$id;->SDesktopTheme:I

    .line 423
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v74, v3

    check-cast v74, Landroid/widget/Spinner;

    .line 424
    .local v74, "SDesktopTheme":Landroid/widget/Spinner;
    if-eqz v74, :cond_b

    .line 428
    sget v1, Lcom/termux/x11/R$id;->SGPUName:I

    .line 429
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v75, v3

    check-cast v75, Landroid/widget/Spinner;

    .line 430
    .local v75, "SGPUName":Landroid/widget/Spinner;
    if-eqz v75, :cond_a

    .line 434
    sget v1, Lcom/termux/x11/R$id;->SGraphicsDriver:I

    .line 435
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v76, v3

    check-cast v76, Landroid/widget/Spinner;

    .line 436
    .local v76, "SGraphicsDriver":Landroid/widget/Spinner;
    if-eqz v76, :cond_9

    .line 440
    sget v1, Lcom/termux/x11/R$id;->SMouseWarpOverride:I

    .line 441
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v77, v3

    check-cast v77, Landroid/widget/Spinner;

    .line 442
    .local v77, "SMouseWarpOverride":Landroid/widget/Spinner;
    if-eqz v77, :cond_8

    .line 446
    sget v1, Lcom/termux/x11/R$id;->SOffscreenRenderingMode:I

    .line 447
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v78, v3

    check-cast v78, Landroid/widget/Spinner;

    .line 448
    .local v78, "SOffscreenRenderingMode":Landroid/widget/Spinner;
    if-eqz v78, :cond_7

    .line 452
    sget v1, Lcom/termux/x11/R$id;->SScreenSize:I

    .line 453
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v79, v3

    check-cast v79, Landroid/widget/Spinner;

    .line 454
    .local v79, "SScreenSize":Landroid/widget/Spinner;
    if-eqz v79, :cond_6

    .line 458
    sget v1, Lcom/termux/x11/R$id;->SStrictShaderMath:I

    .line 459
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v80, v3

    check-cast v80, Landroid/widget/Spinner;

    .line 460
    .local v80, "SStrictShaderMath":Landroid/widget/Spinner;
    if-eqz v80, :cond_5

    .line 464
    sget v1, Lcom/termux/x11/R$id;->SVideoMemorySize:I

    .line 465
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v81, v3

    check-cast v81, Landroid/widget/Spinner;

    .line 466
    .local v81, "SVideoMemorySize":Landroid/widget/Spinner;
    if-eqz v81, :cond_4

    .line 470
    sget v1, Lcom/termux/x11/R$id;->SWineVersion:I

    .line 471
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v82, v3

    check-cast v82, Landroid/widget/Spinner;

    .line 472
    .local v82, "SWineVersion":Landroid/widget/Spinner;
    if-eqz v82, :cond_3

    .line 476
    sget v1, Lcom/termux/x11/R$id;->TVDrivesEmptyText:I

    .line 477
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v83, v3

    check-cast v83, Landroid/widget/TextView;

    .line 478
    .local v83, "TVDrivesEmptyText":Landroid/widget/TextView;
    if-eqz v83, :cond_2

    .line 482
    sget v1, Lcom/termux/x11/R$id;->TVEnvVarsEmptyText:I

    .line 483
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v84, v3

    check-cast v84, Landroid/widget/TextView;

    .line 484
    .local v84, "TVEnvVarsEmptyText":Landroid/widget/TextView;
    if-eqz v84, :cond_1

    .line 488
    sget v1, Lcom/termux/x11/R$id;->TabLayout:I

    .line 489
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v85, v3

    check-cast v85, Lcom/google/android/material/tabs/TabLayout;

    .line 490
    .local v85, "TabLayout":Lcom/google/android/material/tabs/TabLayout;
    if-eqz v85, :cond_0

    .line 494
    new-instance v86, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;

    move-object/from16 v3, v86

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v5, v2

    move-object/from16 v6, v46

    move-object/from16 v7, v47

    move-object/from16 v8, v48

    move-object/from16 v9, v49

    move-object/from16 v10, v50

    move-object/from16 v11, v51

    move-object/from16 v12, v52

    move-object/from16 v13, v53

    move-object/from16 v14, v54

    move-object/from16 v15, v55

    move-object/from16 v16, v56

    move-object/from16 v17, v57

    move-object/from16 v18, v58

    move-object/from16 v19, v59

    move-object/from16 v20, v60

    move-object/from16 v21, v61

    move-object/from16 v22, v62

    move-object/from16 v23, v63

    move-object/from16 v24, v64

    move-object/from16 v25, v65

    move-object/from16 v26, v66

    move-object/from16 v27, v67

    move-object/from16 v28, v68

    move-object/from16 v29, v69

    move-object/from16 v30, v70

    move-object/from16 v31, v71

    move-object/from16 v32, v72

    move-object/from16 v33, v73

    move-object/from16 v34, v74

    move-object/from16 v35, v75

    move-object/from16 v36, v76

    move-object/from16 v37, v77

    move-object/from16 v38, v78

    move-object/from16 v39, v79

    move-object/from16 v40, v80

    move-object/from16 v41, v81

    move-object/from16 v42, v82

    move-object/from16 v43, v83

    move-object/from16 v44, v84

    move-object/from16 v45, v85

    invoke-direct/range {v3 .. v45}, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/termux/x11/controller/widget/CPUListView;Lcom/termux/x11/controller/widget/ColorPickerView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/termux/x11/controller/widget/ImagePickerView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/tabs/TabLayout;)V

    return-object v86

    .line 491
    :cond_0
    goto :goto_0

    .line 485
    .end local v85    # "TabLayout":Lcom/google/android/material/tabs/TabLayout;
    :cond_1
    goto :goto_0

    .line 479
    .end local v84    # "TVEnvVarsEmptyText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 473
    .end local v83    # "TVDrivesEmptyText":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 467
    .end local v82    # "SWineVersion":Landroid/widget/Spinner;
    :cond_4
    goto :goto_0

    .line 461
    .end local v81    # "SVideoMemorySize":Landroid/widget/Spinner;
    :cond_5
    goto :goto_0

    .line 455
    .end local v80    # "SStrictShaderMath":Landroid/widget/Spinner;
    :cond_6
    goto :goto_0

    .line 449
    .end local v79    # "SScreenSize":Landroid/widget/Spinner;
    :cond_7
    goto :goto_0

    .line 443
    .end local v78    # "SOffscreenRenderingMode":Landroid/widget/Spinner;
    :cond_8
    goto :goto_0

    .line 437
    .end local v77    # "SMouseWarpOverride":Landroid/widget/Spinner;
    :cond_9
    goto :goto_0

    .line 431
    .end local v76    # "SGraphicsDriver":Landroid/widget/Spinner;
    :cond_a
    goto :goto_0

    .line 425
    .end local v75    # "SGPUName":Landroid/widget/Spinner;
    :cond_b
    goto :goto_0

    .line 419
    .end local v74    # "SDesktopTheme":Landroid/widget/Spinner;
    :cond_c
    goto :goto_0

    .line 413
    .end local v73    # "SDesktopBackgroundType":Landroid/widget/Spinner;
    :cond_d
    goto :goto_0

    .line 407
    .end local v72    # "SDXWrapper":Landroid/widget/Spinner;
    :cond_e
    goto :goto_0

    .line 401
    .end local v71    # "SCSMT":Landroid/widget/Spinner;
    :cond_f
    goto :goto_0

    .line 395
    .end local v70    # "SBox86Preset":Landroid/widget/Spinner;
    :cond_10
    goto :goto_0

    .line 389
    .end local v69    # "SBox64Preset":Landroid/widget/Spinner;
    :cond_11
    goto :goto_0

    .line 383
    .end local v68    # "SAudioDriver":Landroid/widget/Spinner;
    :cond_12
    goto :goto_0

    .line 377
    .end local v67    # "LLWineVersion":Landroid/widget/LinearLayout;
    :cond_13
    goto :goto_0

    .line 371
    .end local v66    # "LLTabWineConfiguration":Landroid/widget/LinearLayout;
    :cond_14
    goto :goto_0

    .line 365
    .end local v65    # "LLTabWinComponents":Landroid/widget/LinearLayout;
    :cond_15
    goto :goto_0

    .line 359
    .end local v64    # "LLTabEnvVars":Landroid/widget/LinearLayout;
    :cond_16
    goto :goto_0

    .line 353
    .end local v63    # "LLTabDrives":Landroid/widget/LinearLayout;
    :cond_17
    goto :goto_0

    .line 347
    .end local v62    # "LLTabAdvanced":Landroid/widget/LinearLayout;
    :cond_18
    goto :goto_0

    .line 341
    .end local v61    # "LLEnvVars":Landroid/widget/LinearLayout;
    :cond_19
    goto :goto_0

    .line 335
    .end local v60    # "LLDrives":Landroid/widget/LinearLayout;
    :cond_1a
    goto :goto_0

    .line 329
    .end local v59    # "LLCustomScreenSize":Landroid/widget/LinearLayout;
    :cond_1b
    goto :goto_0

    .line 323
    .end local v58    # "IPVDesktopBackgroundImage":Lcom/termux/x11/controller/widget/ImagePickerView;
    :cond_1c
    goto :goto_0

    .line 317
    .end local v57    # "ETScreenWidth":Landroid/widget/EditText;
    :cond_1d
    goto :goto_0

    .line 311
    .end local v56    # "ETScreenHeight":Landroid/widget/EditText;
    :cond_1e
    goto :goto_0

    .line 305
    .end local v55    # "ETName":Landroid/widget/EditText;
    :cond_1f
    goto :goto_0

    .line 299
    .end local v54    # "CPVDesktopBackgroundColor":Lcom/termux/x11/controller/widget/ColorPickerView;
    :cond_20
    goto :goto_0

    .line 293
    .end local v53    # "CPUListView":Lcom/termux/x11/controller/widget/CPUListView;
    :cond_21
    goto :goto_0

    .line 287
    .end local v52    # "CBStopServicesOnStartup":Landroid/widget/CheckBox;
    :cond_22
    goto :goto_0

    .line 281
    .end local v51    # "CBShowFPS":Landroid/widget/CheckBox;
    :cond_23
    goto :goto_0

    .line 275
    .end local v50    # "BTHelpDXWrapper":Landroid/widget/ImageView;
    :cond_24
    goto :goto_0

    .line 269
    .end local v49    # "BTGraphicsDriverConfig":Landroid/widget/ImageButton;
    :cond_25
    goto :goto_0

    .line 263
    .end local v48    # "BTDXWrapperConfig":Landroid/widget/ImageButton;
    :cond_26
    goto :goto_0

    .line 257
    .end local v47    # "BTConfirm":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    :cond_27
    goto :goto_0

    .line 251
    .end local v46    # "BTAddEnvVar":Landroid/widget/Button;
    :cond_28
    nop

    .line 504
    .end local v2    # "BTAddDrive":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 235
    sget v0, Lcom/termux/x11/R$layout;->container_detail_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    :cond_0
    invoke-static {v0}, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->bind(Landroid/view/View;)Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/termux/x11/databinding/ContainerDetailFragmentBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
