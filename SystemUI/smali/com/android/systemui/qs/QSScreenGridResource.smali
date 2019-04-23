.class public Lcom/android/systemui/qs/QSScreenGridResource;
.super Ljava/lang/Object;
.source "QSScreenGridResource.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# static fields
.field static final QS_SCREEN_GRID_COLUMN:[I

.field static final QS_SCREEN_GRID_COLUMN_TABLET:[I

.field static final QS_SCREEN_GRID_DRAWABLE:[I

.field static final QS_SCREEN_GRID_ITEM:[I

.field static final QS_SCREEN_GRID_ITEM_TABLET:[I

.field static final QS_SCREEN_GRID_MOBILE_KEYBOARD_COVERED_DRAWABLE:[I

.field static final QS_TILE_HEIGHT_DIMENS:[I

.field static final QS_TILE_HEIGHT_RATIO:[I

.field static final QS_TILE_ICON_RATIO:[I

.field static final QS_TILE_ICON_SIZE_DIMENS:[I

.field static final QS_TILE_LABEL_MARGIN_TOP_DIMENS:[I

.field static final QS_TILE_LABEL_TEXT_SIZE_DIMENS:[I

.field static final QS_TILE_LAYOUT_MARGIN_BOTTOM_DIMENS:[I

.field static final QS_TILE_LAYOUT_MARGIN_SIDE_DIMENS:[I

.field static final QS_TILE_LAYOUT_MARGIN_TOP_DIMENS:[I

.field static final QS_TILE_LAYOUT_MARGIN_VERTICAL_DIMENS:[I

.field static final QS_TILE_VIEW_PADDING_TOP_DIMENS:[I

.field static final QS_TILE_WIDTH_DIMENS:[I

.field static final QS_TILE_WIDTH_RATIO:[I

.field static final QUICK_QS_TILE_ICON_SIZE_DIMENS:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private mScreenGridColumns:I

.field private mScreenGridRows:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_ITEM:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_ITEM_TABLET:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_COLUMN:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_COLUMN_TABLET:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_DRAWABLE:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_MOBILE_KEYBOARD_COVERED_DRAWABLE:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_WIDTH_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_HEIGHT_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_ICON_SIZE_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QUICK_QS_TILE_ICON_SIZE_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LABEL_TEXT_SIZE_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LABEL_MARGIN_TOP_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_c

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_TOP_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_BOTTOM_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_SIDE_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_f

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_VERTICAL_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_VIEW_PADDING_TOP_DIMENS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_11

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_HEIGHT_RATIO:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_WIDTH_RATIO:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_ICON_RATIO:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x7f0b006a
        0x7f0b006b
        0x7f0b006d
    .end array-data

    :array_3
    .array-data 4
        0x7f0b006b
        0x7f0b006d
    .end array-data

    :array_4
    .array-data 4
        0x7f0804e2
        0x7f0804e5
        0x7f0804e8
    .end array-data

    :array_5
    .array-data 4
        0x7f0804e1
        0x7f0804e4
        0x7f0804e7
    .end array-data

    :array_6
    .array-data 4
        0x7f07061a
        0x7f07061c
        0x7f07061e
    .end array-data

    :array_7
    .array-data 4
        0x7f0705e6
        0x7f0705e8
        0x7f0705ea
    .end array-data

    :array_8
    .array-data 4
        0x7f0705ef
        0x7f0705f1
        0x7f0705f3
    .end array-data

    :array_9
    .array-data 4
        0x7f0705d9
        0x7f0705da
        0x7f0705db
    .end array-data

    :array_a
    .array-data 4
        0x7f070612
        0x7f070613
        0x7f070614
    .end array-data

    :array_b
    .array-data 4
        0x7f0705f7
        0x7f0705f8
        0x7f0705f9
    .end array-data

    :array_c
    .array-data 4
        0x7f070601
        0x7f070602
        0x7f070603
    .end array-data

    :array_d
    .array-data 4
        0x7f0705fa
        0x7f0705fb
        0x7f0705fc
    .end array-data

    :array_e
    .array-data 4
        0x7f0705fe
        0x7f0705ff
        0x7f070600
    .end array-data

    :array_f
    .array-data 4
        0x7f070604
        0x7f070605
        0x7f070606
    .end array-data

    :array_10
    .array-data 4
        0x7f070616
        0x7f070617
        0x7f070618
    .end array-data

    :array_11
    .array-data 4
        0x7f0705e7
        0x7f0705e9
        0x7f0705eb
    .end array-data

    :array_12
    .array-data 4
        0x7f07061b
        0x7f07061d
        0x7f07061f
    .end array-data

    :array_13
    .array-data 4
        0x7f0705f0
        0x7f0705f2
        0x7f0705f4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "qs_tile_layout"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mScreenGridColumns:I

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mScreenGridRows:I

    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSScreenGridResource;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public getIconSizeDimensionToDisplayHeight()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSScreenGridResource;->getTileDimensionToDisplayHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0705f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSScreenGridResource;->getQSScreenGridRatio(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    :goto_0
    int-to-float v4, v1

    div-float/2addr v4, v3

    float-to-int v0, v4

    return v0
.end method

.method public getPanelHeightToDisplaySize()I
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const v3, 0x7f070788

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0705a4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-nez v1, :cond_2

    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v5, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0704a9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    :cond_2
    :goto_1
    const/4 v5, 0x0

    const v6, 0x7f0705c9

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    sget-boolean v7, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v7, :cond_4

    const v7, 0x7f0704e9

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz v1, :cond_3

    add-int v8, v3, v4

    sub-int v5, v7, v8

    goto :goto_2

    :cond_3
    sub-int v8, v7, v3

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v5, v8

    :goto_2
    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v3

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    return v7

    :cond_5
    if-eqz v1, :cond_6

    iget v7, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayWidth:I

    add-int v8, v3, v4

    sub-int v5, v7, v8

    goto :goto_3

    :cond_6
    iget v7, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayHeight:I

    sub-int/2addr v7, v3

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v5, v7

    :goto_3
    sub-int v7, v5, v2

    return v7
.end method

.method public getQSScreenGridRatio(I)I
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mScreenGridColumns:I

    add-int/lit8 v0, v0, -0x3

    packed-switch p1, :pswitch_data_0

    const-string v1, "QSScreenGridRatio"

    const-string v2, "incorrect resource."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :pswitch_0
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_ICON_RATIO:[I

    aget v1, v1, v0

    return v1

    :pswitch_1
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_HEIGHT_RATIO:[I

    aget v1, v1, v0

    return v1

    :pswitch_2
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_WIDTH_RATIO:[I

    aget v1, v1, v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getQSScreenGridResource(I)I
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mScreenGridColumns:I

    add-int/lit8 v0, v0, -0x3

    packed-switch p1, :pswitch_data_0

    const-string v1, "QSScreenGridResources"

    const-string v2, "incorrect resource."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :pswitch_0
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_VIEW_PADDING_TOP_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_1
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_VERTICAL_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_2
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_SIDE_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_3
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_BOTTOM_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_4
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LAYOUT_MARGIN_TOP_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_5
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LABEL_MARGIN_TOP_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_6
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_LABEL_TEXT_SIZE_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_7
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QUICK_QS_TILE_ICON_SIZE_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_8
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_ICON_SIZE_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_9
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_HEIGHT_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_a
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_TILE_WIDTH_DIMENS:[I

    aget v1, v1, v0

    return v1

    :pswitch_b
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b0074

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0071

    :goto_0
    return v1

    :pswitch_c
    sget-object v1, Lcom/android/systemui/qs/QSScreenGridResource;->QS_SCREEN_GRID_COLUMN:[I

    aget v1, v1, v0

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScreenGridColumns()I
    .locals 3

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "qs_tile_column"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGridRows()I
    .locals 4

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "qs_tile_row"

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTileDimensionToDisplayHeight()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSScreenGridResource;->getQSScreenGridRatio(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0704e9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0705ed

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v0, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x7f0705ec

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    :cond_2
    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v0, v4

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v0, v4

    :goto_1
    return v0
.end method

.method public getTileDimensionToDisplayWidth()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSScreenGridResource;->getQSScreenGridRatio(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0704f0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070620

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    int-to-float v5, v4

    div-float/2addr v5, v3

    float-to-int v0, v5

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    iget v4, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v0, v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v0, v4

    :goto_1
    return v0
.end method

.method public getTilePageHeightToDisplaySize()I
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7f070628

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07059d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f070633

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f070632

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0705c5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0705c1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSScreenGridResource;->getPanelHeightToDisplaySize()I

    move-result v4

    const-string v5, "QSScreenGridResource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displaySize height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " panelHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height_ratio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSScreenGridResource;->getQSScreenGridRatio(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " width_ratio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSScreenGridResource;->getQSScreenGridRatio(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " iconsize_ratio: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSScreenGridResource;->getQSScreenGridRatio(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " isLandscape? "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v2, v4, v3

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSScreenGridResource;->updateDisplaySize()V

    return-void
.end method

.method public updateDisplaySize()V
    .locals 6

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayHeight:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayWidth:I

    goto :goto_2

    :cond_2
    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayHeight:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayWidth:I

    :goto_2
    const-string v3, "QSScreenGridResource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaysize Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mDisplayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " portrait? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateScreenGridColumns(I)V
    .locals 3

    const-string v0, "QSScreenGridResource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreenGridColumns() : oldValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mScreenGridColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/qs/QSScreenGridResource;->mScreenGridColumns:I

    return-void
.end method
