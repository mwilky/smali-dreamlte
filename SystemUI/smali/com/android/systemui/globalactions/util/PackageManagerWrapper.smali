.class public Lcom/android/systemui/globalactions/util/PackageManagerWrapper;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.java"


# instance fields
.field private final ATT_FOTA_CLIENT_PACKAGE:Ljava/lang/String;

.field private final BIKE_MODE_PACKAGE_NAME:Ljava/lang/String;

.field private final BIXBY_AGENT_PACKAGE:Ljava/lang/String;

.field private final KIDS_MODE_ACTIVITY_NAME:Ljava/lang/String;

.field private final KIDS_MODE_PACKAGE_NAME:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.app.bikemode"

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->BIKE_MODE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.kidshome"

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->KIDS_MODE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.bixby.agent"

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->BIXBY_AGENT_PACKAGE:Ljava/lang/String;

    const-string v0, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->KIDS_MODE_ACTIVITY_NAME:Ljava/lang/String;

    const-string v0, "com.ws.dm"

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->ATT_FOTA_CLIENT_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public isATTFOTAPackageAvailable()Z
    .locals 3

    const-string v0, "com.ws.dm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public isBikeModeInstalled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.android.app.bikemode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBixbyPackageAvailable()Z
    .locals 3

    const-string v0, "com.samsung.android.bixby.agent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public isKidsHomeMode()Z
    .locals 6

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.kidshome"

    const-string v2, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/globalactions/util/PackageManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method
