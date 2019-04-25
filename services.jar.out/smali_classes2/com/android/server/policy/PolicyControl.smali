.class public Lcom/android/server/policy/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sDexMode:I

.field private static sDexStandAloneModeEnabled:Z

.field private static sForceImmersiveModeEnabled:Z

.field private static sGestureHintEnabled:Z

.field private static sGestureNavBarEnabled:Z

.field private static sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

.field private static sInputMethodVisible:Z

.field private static sSettingValue:Ljava/lang/String;

.field private static sVrImmersiveMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PolicyControl"

    sput-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    sput v0, Lcom/android/server/policy/PolicyControl;->sDexMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 p1, p1, -0x5

    :cond_1
    return p1
.end method

.method public static canApplyForceImmersiveMode(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :goto_0
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "sImmersiveStatusFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "sImmersiveNavigationFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/policy/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyControl.sDexMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/policy/PolicyControl;->sDexMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyControl.sDexStandAloneModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/policy/PolicyControl;->sDexStandAloneModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyControl.sVrImmersiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/policy/PolicyControl;->sVrImmersiveMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v1, v2

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    :goto_0
    move-object p1, v1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v1

    goto :goto_1

    :cond_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v1, v2

    :goto_1
    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x1404

    const v2, -0x40000101    # -1.9999694f

    and-int/2addr v1, v2

    const/4 v0, 0x1

    :cond_3
    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    or-int/lit16 v1, v1, 0x1202

    const v2, 0x7ffffeff

    and-int/2addr v1, v2

    const/4 v0, 0x1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_6

    and-int/lit16 v1, v1, -0x601

    :cond_6
    sget-boolean v2, Lcom/android/server/policy/PolicyControl;->sVrImmersiveMode:Z

    if-eqz v2, :cond_7

    or-int/lit16 v1, v1, 0x1606

    const v2, 0x3ffffeff    # 1.9999694f

    and-int/2addr v1, v2

    :cond_7
    return v1
.end method

.method public static getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    move-object p1, v0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    const v2, -0x4000801

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x400

    and-int/2addr v0, v2

    :cond_1
    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    const v3, -0x8000001

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/2addr v0, v3

    :cond_2
    sget-boolean v1, Lcom/android/server/policy/PolicyControl;->sVrImmersiveMode:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x400

    and-int/2addr v0, v2

    and-int/2addr v0, v3

    :cond_3
    return v0
.end method

.method public static isForceImmersiveModeApplied(I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v0
.end method

.method public static isGestureHintEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->sGestureHintEnabled:Z

    return v0
.end method

.method public static isGestureNavBarEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->sGestureNavBarEnabled:Z

    return v0
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reloadFromSetting()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "policy_control"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->setFilters(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/policy/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setDexMode(I)V
    .locals 1

    sput p0, Lcom/android/server/policy/PolicyControl;->sDexMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/policy/PolicyControl;->sDexStandAloneModeEnabled:Z

    return-void
.end method

.method private static setFilters(Ljava/lang/String;)V
    .locals 10

    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sput-object v0, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-eqz p0, :cond_8

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_2

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    :cond_2
    goto :goto_1

    :cond_3
    const-string v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    goto :goto_1

    :cond_4
    const-string v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    sget-object v9, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    if-nez v9, :cond_5

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    :cond_5
    goto :goto_1

    :cond_6
    const-string v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v7}, Lcom/android/server/policy/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;

    move-result-object v8

    sput-object v8, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/android/server/policy/PolicyControl;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersiveStatusFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersiveNavigationFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immersivePreconfirmationsFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/policy/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/policy/PolicyControl$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static setForceImmersiveModeEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/PolicyControl;->sForceImmersiveModeEnabled:Z

    return-void
.end method

.method public static setGestureNavBarAndHintEnabled(ZZ)V
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/PolicyControl;->sGestureNavBarEnabled:Z

    sput-boolean p1, Lcom/android/server/policy/PolicyControl;->sGestureHintEnabled:Z

    return-void
.end method

.method public static setInputMethodVisible(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/PolicyControl;->sInputMethodVisible:Z

    return-void
.end method

.method public static setVrImmersiveMode(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/policy/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVrImmersiveMode vrImmersiveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/android/server/policy/PolicyControl;->sVrImmersiveMode:Z

    return-void
.end method
