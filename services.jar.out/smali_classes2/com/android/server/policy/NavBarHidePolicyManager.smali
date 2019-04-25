.class public Lcom/android/server/policy/NavBarHidePolicyManager;
.super Ljava/lang/Object;
.source "NavBarHidePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/NavBarHidePolicyManager$T;,
        Lcom/android/server/policy/NavBarHidePolicyManager$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DIR_PATH:Ljava/lang/String;

.field private static final FILE_NAME:Ljava/lang/String; = "PackageMap"

.field private static final POLICY_DEFAULT_OFF_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final POLICY_FIXED_OFF_METADATA:Ljava/lang/String; = "com.samsung.android.non_immersive"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DELAY_SAVE_POLICIES:I

.field private final MSG_SAVE_POLICIES:I

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

.field mPolicies:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/android/server/policy/NavBarHidePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/NavBarHidePolicyManager;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system/navibarhidepolicy/0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    const-string v1, "com.tencent.tmgp.sgame"

    const-string v2, "com.tencent.mm"

    const-string v3, "com.eg.android.AlipayGphone"

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.baidu.searchbox"

    const-string v6, "com.baidu.searchbox_samsung"

    const-string v7, "com.pingan.lifeinsurance"

    const-string/jumbo v8, "tv.xiaoka.live"

    const-string v9, "com.qq.reader"

    const-string v10, "com.nttdocomo.android.dhome"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/NavBarHidePolicyManager;->POLICY_DEFAULT_OFF_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->MSG_SAVE_POLICIES:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->DELAY_SAVE_POLICIES:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/NavBarHidePolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->savePolicies()V

    return-void
.end method

.method private checkCallerIsSystemOrPermission()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires android.permission.STATUS_BAR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disable(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    move v0, v2

    iget-object v2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private enable(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private isCallerSystem()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/NavBarHidePolicyManager;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isUidSystem(I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private killApplication(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, -0x1

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->killPackageProcess(Ljava/lang/String;IILjava/lang/String;Z)I

    return-void
.end method

.method private loadPolicies()V
    .locals 7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PackageMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v3, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: f_str.close() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_3

    :catch_1
    move-exception v3

    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: d_str.close() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v3

    :try_start_3
    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: d_str.readObject() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    sget-object v4, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "loadPolicies: f_str.close() fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v6, "loadPolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v6, "loadPolicies: d_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_6
    throw v3
.end method

.method private savePolicies()V
    .locals 8

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/policy/NavBarHidePolicyManager;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PackageMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_3

    :catch_1
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    :try_start_3
    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: d_str.writeObject() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v4

    sget-object v5, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "savePolicies: f_str.close() fail"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v5

    sget-object v6, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "savePolicies: f_str.close() fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v5

    sget-object v6, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "savePolicies: f_str.close() fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_6
    throw v4
.end method

.method private scheduleSavePolicies()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    iget-object v2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/NavBarHidePolicyManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public getPolicy(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    sget-object v1, Lcom/android/server/policy/NavBarHidePolicyManager;->POLICY_DEFAULT_OFF_PACKAGES:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v3, 0x80

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.non_immersive"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "getPolicy: getApplicationInfo fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->loadPolicies()V

    new-instance v0, Lcom/android/server/policy/NavBarHidePolicyManager$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$H;-><init>(Lcom/android/server/policy/NavBarHidePolicyManager;Lcom/android/server/policy/NavBarHidePolicyManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mHandler:Lcom/android/server/policy/NavBarHidePolicyManager$H;

    new-instance v0, Lcom/android/server/policy/NavBarHidePolicyManager$T;

    const-string v1, "NavBarHidePolicyManagerThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/NavBarHidePolicyManager$T;-><init>(Lcom/android/server/policy/NavBarHidePolicyManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;

    invoke-virtual {v0}, Lcom/android/server/policy/NavBarHidePolicyManager$T;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mThread:Lcom/android/server/policy/NavBarHidePolicyManager$T;

    invoke-virtual {v0}, Lcom/android/server/policy/NavBarHidePolicyManager$T;->start()V

    :cond_0
    return-void
.end method

.method public setPolicy(Ljava/lang/String;IZ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->checkCallerIsSystemOrPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/NavBarHidePolicyManager;->disable(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/NavBarHidePolicyManager;->enable(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    sget-object v3, Lcom/android/server/policy/NavBarHidePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPolicy: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", disable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPolicies.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/NavBarHidePolicyManager;->mPolicies:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/NavBarHidePolicyManager;->scheduleSavePolicies()V

    if-eqz v2, :cond_1

    const-string v3, "com.android.settings"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/NavBarHidePolicyManager;->killApplication(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
