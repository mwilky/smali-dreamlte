.class public Lcom/android/server/desktopmode/DesktopModePolicyManager;
.super Ljava/lang/Object;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_DATABASE:Ljava/lang/String; = "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

.field private static final GLOBAL_DUAL_MODE_LAUNCH_BLACK_LIST_NAME:Ljava/lang/String; = "GLBLDM"

.field private static final GLOBAL_DUAL_MODE_LAUNCH_WHITE_LIST_NAME:Ljava/lang/String; = "GLWLDM"

.field private static final GLOBAL_LAUNCH_BLACK_LIST_NAME:Ljava/lang/String; = "GLBL"

.field private static final GLOBAL_LAUNCH_WHITE_LIST_NAME:Ljava/lang/String; = "GLWL"

.field private static final GLOBAL_TABS_LAUNCH_BLACK_LIST_NAME:Ljava/lang/String; = "GLBLSATABS"

.field private static final GLOBAL_TABS_LAUNCH_WHITE_LIST_NAME:Ljava/lang/String; = "GLWLSATABS"

.field private static final LAUNCH_POLICY_BLACKLIST_FROM_DATABASE:I = 0x2

.field public static final LAUNCH_POLICY_COMPATIBILITY:I = 0x2

.field private static final LAUNCH_POLICY_COMPATIBILITY_STRING:Ljava/lang/String; = "compatibility"

.field private static final LAUNCH_POLICY_DECLARED_FORCED_FREEFORM_METADATA:Ljava/lang/String; = "com.samsung.android.dex.launchpolicy.supported"

.field private static final LAUNCH_POLICY_DECLARED_NOT_SUPPORTED_METADATA:Ljava/lang/String; = "com.samsung.android.dex.launchpolicy.notsupported"

.field public static final LAUNCH_POLICY_FREEFORM:I = 0x10

.field private static final LAUNCH_POLICY_FREEFORM_STRING:Ljava/lang/String; = "freeform"

.field public static final LAUNCH_POLICY_GAME:I = 0x8000

.field private static final LAUNCH_POLICY_MODE_DEFAULT:I = 0x0

.field private static final LAUNCH_POLICY_MODE_LABS_RESIZABLE_WINDOW:I = 0x1

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_CATEGORY_HOME:I = 0x80

.field private static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_CATEGORY_HOME_STRING:Ljava/lang/String; = "category_home_declared"

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_TOUCHSCREEN:I = 0x40

.field private static final LAUNCH_POLICY_NOT_SUPPORTED_DECLARED_TOUCHSCREEN_STRING:Ljava/lang/String; = "touchscreen_declared"

.field public static final LAUNCH_POLICY_NOT_SUPPORTED_LISTED:I = 0x20

.field private static final LAUNCH_POLICY_NOT_SUPPORTED_LISTED_STRING:Ljava/lang/String; = "not_supported_listed"

.field public static final LAUNCH_POLICY_UNDEFINED:I = 0x1

.field private static final LAUNCH_POLICY_UNDEFINED_STRING:Ljava/lang/String; = "undefined"

.field private static final LAUNCH_POLICY_WHITELIST_FROM_DATABASE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mCurrentLaunchPolicyMode:I

.field private static mIsDeveloperModeEnabled:Z

.field private static mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLaunchPolicyDatabaseCacheSize:I

.field private static mLaunchPolicyDatabaseUpdatedReason:Ljava/lang/String;

.field private static mLaunchPolicyDatabaseVersion:Ljava/lang/String;

.field private static sBindInputServiceExceptPackages:[Ljava/lang/String;

.field private static sCategoryHomeExceptPackages:[Ljava/lang/String;

.field private static sNotSupportedListPackages:[Ljava/lang/String;

.field private static sResizeModeExceptPackages:[Ljava/lang/String;

.field private static sTouchScreenExceptPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS_POLICY]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    sput v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mCurrentLaunchPolicyMode:I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mIsDeveloperModeEnabled:Z

    sput v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCacheSize:I

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseUpdatedReason:Ljava/lang/String;

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseVersion:Ljava/lang/String;

    const-string v0, "com.microsoft.office.powerpoint"

    const-string v1, "com.google.android.music"

    const-string v2, "com.google.android.videos"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sTouchScreenExceptPackages:[Ljava/lang/String;

    const-string v0, "com.google.android.googlequicksearchbox"

    const-string v1, "com.sec.android.inputmethod"

    const-string v2, "com.sec.android.inputmethod.beta"

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sBindInputServiceExceptPackages:[Ljava/lang/String;

    const-string v1, "com.android.settings"

    const-string v2, "com.sec.android.app.desktoplauncher"

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.asurion.android.mobilerecovery.att"

    const-string v5, "com.samsung.knox.securefolder"

    const-string v6, "com.samsung.android.knox.containeragent"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sCategoryHomeExceptPackages:[Ljava/lang/String;

    const-string v0, "com.microsoft.office.powerpoint"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sResizeModeExceptPackages:[Ljava/lang/String;

    const-string v0, "com.samsung.android.app.spage"

    const-string v1, "com.samsung.android.visionintelligence"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static clearLaunchPolicyDatabaseCache()V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearLaunchPolicyDatabaseCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    return-void
.end method

.method static dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mCurrentLaunchPolicyMode"

    sget v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mCurrentLaunchPolicyMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsDeveloperModeEnabled"

    sget-boolean v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mIsDeveloperModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Last LaunchPolicyDatabaseCache state:"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mLaunchPolicyDatabaseCacheSize"

    sget v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCacheSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mLaunchPolicyDatabaseUpdatedReason"

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseUpdatedReason:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mLaunchPolicyDatabaseVersion"

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method static dumpLaunchPolicyDatabase(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 11

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyDatabase(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "no launchPolicyDatabase"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string/jumbo v1, "white_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "black_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "display_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x66

    const/16 v8, 0x65

    if-ge v6, v4, :cond_3

    aget-object v9, v1, v6

    if-ne v3, v8, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GLWLSATABS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-ne v3, v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GLWL+GLWLDM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GLWL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "***** NOT SUPPORTED PACKAGES ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]*****"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v4, v2

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    if-ne v3, v8, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GLBLSATABS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne v3, v7, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GLBL+GLBLDM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GLBL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***** TOTAL POLICY DATABASE ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]*****"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static getLaunchPolicyDatabase(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 11

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    move-result-object v2

    if-eqz v2, :cond_5

    nop

    const-class v3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    const/16 v5, 0x65

    if-ne v3, v5, :cond_0

    nop

    move v3, v5

    goto :goto_0

    :cond_0
    nop

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getLaunchPolicyDatabase(I)Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getLaunchPolicyDatabase ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [Ljava/lang/String;

    const-string/jumbo v10, "white_list"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v10, "black_list"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-class v10, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v10}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v10

    if-ne v10, v5, :cond_4

    const-string/jumbo v4, "display_type"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    const-string/jumbo v5, "display_type"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_5
    return-object v1
.end method

.method public static getLaunchPolicyForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mIsDeveloperModeEnabled:Z

    if-eqz v6, :cond_1

    const/16 v0, 0x10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Developer Mode is true, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No appInfo. return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_4
    if-nez v3, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No packageName. return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, v3, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isNotSupportedDeclared(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v0, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", isNotSupportedDeclared true, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    :cond_8
    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isNotSupportedListed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v0, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", isNotSupportedListed package true, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0

    :cond_a
    invoke-static {p0, v3}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyFromDatabaseCache(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", getLaunchPolicyFromDatabaseCache:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    if-ne v0, v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v0

    :cond_c
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", cuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_13

    const-string v6, ", activityInfo not null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, v3, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v0, 0x40

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", isTouchScreenDeclared true, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v0

    :cond_e
    invoke-static {p0, v3, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v0, 0x80

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", isCategoryHomeDeclared true, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_f

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v0

    :cond_10
    invoke-static {p0, v3, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->hasBindInputMethodService(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v0, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", hasBindInputMethodService true, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v0

    :cond_12
    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isGameFromGameManager(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, ", isGameFromGameManager true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    :cond_13
    if-nez p2, :cond_15

    invoke-static {p0, v3, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isForcedFreeformDeclared(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v0, 0x10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", isForcedFreeformDeclared true, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_14

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v0

    :cond_15
    invoke-static {v3, p1, p2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyFromResizeMode(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    const/4 v6, 0x1

    const v7, 0x8000

    if-le v1, v6, :cond_18

    move v0, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", getLaunchPolicyFromResizeMode:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", return "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_16

    or-int/2addr v0, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", game return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_17

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return v0

    :cond_18
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isPreloadedAppResizeable(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v0, 0x10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", isPreloadedAppResizeable true, return "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_19

    or-int/2addr v0, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", game return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_1a

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return v0

    :cond_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", FromDatabaseCache, return "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_1c

    or-int/2addr v0, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", game return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_1d

    sget-object v6, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v0
.end method

.method private static getLaunchPolicyFromDatabaseCache(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x2

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    nop

    const-class v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x66

    :goto_0
    invoke-static {p0, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->initLaunchPolicyDatabaseCache(Landroid/content/Context;I)V

    :cond_1
    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/16 v0, 0x20

    :cond_3
    :goto_1
    return v0
.end method

.method private static getLaunchPolicyFromResizeMode(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 5

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sResizeModeExceptPackages:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isExceptPackage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLaunchPolicyFromResizeMode (except, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x2

    if-eqz p2, :cond_6

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLaunchPolicyFromResizeMode (App SDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", activityinfo resizeMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-ne v2, v0, :cond_3

    return v1

    :cond_3
    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-nez v2, :cond_4

    return v0

    :cond_4
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_8

    return v0

    :cond_6
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_8

    return v0

    :cond_8
    sget v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mCurrentLaunchPolicyMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method public static getLaunchPolicyRunnable(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isNotSupportedListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isNotSupportedDeclared(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->getLaunchPolicyFromDatabaseCache(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->hasBindInputMethodService(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    :goto_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLaunchPolicyRunnable ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLaunchPolicyRunnable ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", no appInfo)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return v0
.end method

.method private static getLaunchPolicyString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/16 v1, 0x10

    if-eq p0, v1, :cond_3

    const/16 v1, 0x20

    if-eq p0, v1, :cond_2

    const/16 v1, 0x40

    if-eq p0, v1, :cond_1

    const/16 v1, 0x80

    if-eq p0, v1, :cond_0

    const-string/jumbo v0, "undefined"

    goto :goto_0

    :cond_0
    const-string v0, "category_home_declared"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "touchscreen_declared"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "not_supported_listed"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "freeform"

    goto :goto_0

    :cond_4
    const-string v0, "compatibility"

    nop

    :goto_0
    return-object v0
.end method

.method private static hasBindInputMethodService(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sBindInputServiceExceptPackages:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isExceptPackage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasBindInputMethodService ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", except, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasBindInputMethodService ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_6

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasBindInputMethodService ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0
.end method

.method public static initLaunchPolicyDatabaseCache(Landroid/content/Context;I)V
    .locals 5

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    nop

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getLaunchPolicyDatabaseVersion()Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseUpdatedReason:Ljava/lang/String;

    sget-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseUpdatedReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getLaunchPolicyDatabase(I)Landroid/util/ArrayMap;

    move-result-object v2

    sput-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sput v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCacheSize:I

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initLaunchPolicyDatabaseCache ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCacheSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initLaunchPolicyDatabaseCache ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mLaunchPolicyDatabaseCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") already cache is exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sCategoryHomeExceptPackages:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isExceptPackage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCategoryHomeDeclared ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", except, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCategoryHomeDeclared ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method private static isExceptPackage([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static isForcedFreeformDeclared(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "com.samsung.android.dex.launchpolicy.supported"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isForcedFreeformDeclared ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method private static isGameFromGameManager(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v3

    move-object v0, v3

    :cond_0
    if-eqz v0, :cond_4

    invoke-interface {v0, p0}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    sget-object v5, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isGameFromGameManager ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v4, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-ne v3, v4, :cond_3

    move v1, v4

    nop

    :cond_3
    return v1

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_1
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGameFromGameManager (false , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1
.end method

.method public static isLaunchPolicyDatabaseExist()Z
    .locals 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->access$100()Z

    move-result v0

    return v0
.end method

.method public static isNotSupportedDeclared(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "com.samsung.android.dex.launchpolicy.notsupported"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNotSupportedDeclared ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method private static isNotSupportedListed(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sNotSupportedListPackages:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNotSupportedListed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isNotSupportedListed (no sNotSupportedListPackages)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return v0
.end method

.method private static isPreloadedAppResizeable(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "com.samsung"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-class v3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTouchScreenDeclared DISPLAY_TYPE_STANDALONE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", standalone, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    sget-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->sTouchScreenExceptPackages:[Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->isExceptPackage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTouchScreenDeclared ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", except, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz v4, :cond_a

    array-length v5, v4

    if-lez v5, :cond_a

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    iget-object v9, v7, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v10, "android.hardware.touchscreen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, v7, Landroid/content/pm/FeatureInfo;->flags:I

    if-ne v9, v8, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-eqz v7, :cond_7

    iget-object v9, v7, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, v7, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v10, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, v7, Landroid/content/pm/FeatureInfo;->flags:I

    if-ne v9, v8, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_2
    if-nez v1, :cond_9

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    const/4 v0, 0x1

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_a

    sget-object v5, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isTouchScreenDeclared (touchScreen="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", touchScreenMultitouch="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    goto :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_4
    if-eqz v0, :cond_b

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTouchScreenDeclared ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v0
.end method

.method public static setCurrentLaunchPolicyMode(Landroid/content/ContentResolver;I)V
    .locals 4

    const-string/jumbo v0, "labs_resizable_window_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    sput v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mCurrentLaunchPolicyMode:I

    goto :goto_0

    :cond_0
    sput v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mCurrentLaunchPolicyMode:I

    :goto_0
    const-string/jumbo v2, "launch_policy_developer_enabled"

    invoke-static {p0, v2, v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mIsDeveloperModeEnabled:Z

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentLaunchPolicyMode mCurrentLaunchPolicyMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mCurrentLaunchPolicyMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsDeveloperModeEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mIsDeveloperModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "launch_policy_mode"

    sget v2, Lcom/android/server/desktopmode/DesktopModePolicyManager;->mCurrentLaunchPolicyMode:I

    invoke-static {p0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method
