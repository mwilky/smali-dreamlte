.class Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchPolicyDatabaseHelper"
.end annotation


# static fields
.field private static final LAUNCH_POLICY_DATABASE_PATH:Ljava/lang/String; = "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

.field private static final LAUNCH_POLICY_DATABASE_VERSION:I = 0x1

.field private static launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;


# instance fields
.field private final LAUNCH_POLICY_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_DATABASE_TABLE:Ljava/lang/String;

.field private final LAUNCH_POLICY_DATABASE_VERSION_TABLE:Ljava/lang/String;

.field private final LAUNCH_POLICY_NAME_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_PACKAGE_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_REASON_COLUMN:Ljava/lang/String;

.field private final LAUNCH_POLICY_VERSION_COLUMN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "LaunchPackageList"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_DATABASE_TABLE:Ljava/lang/String;

    const-string/jumbo v0, "packagename"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_PACKAGE_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "mode"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "policyname"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_NAME_COLUMN:Ljava/lang/String;

    const-string v0, "LaunchPackageVersion"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_DATABASE_VERSION_TABLE:Ljava/lang/String;

    const-string/jumbo v0, "reason"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_REASON_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->LAUNCH_POLICY_VERSION_COLUMN:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->checkDatabase()Z

    move-result v0

    return v0
.end method

.method private static checkDatabase()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkDatabase. There\'s no DB exist. or can not access."

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->launchPolicyDatabaseHelper:Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;

    return-object v0
.end method


# virtual methods
.method protected getLaunchPolicyDatabase(I)Landroid/util/ArrayMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getLaunchPolicyDatabase : Display - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->checkDatabase()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_5

    :catch_0
    move-exception v3

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :cond_1
    :goto_0
    if-eqz v2, :cond_e

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "LaunchPackageList"

    const-string/jumbo v3, "packagename"

    const-string/jumbo v4, "mode"

    const-string/jumbo v6, "policyname"

    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_e

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-ne p1, v6, :cond_3

    const-string v6, "GLBLSATABS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "GLWLSATABS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/16 v6, 0x66

    if-ne p1, v6, :cond_5

    const-string v6, "GLBLDM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "GLWLDM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v6, "GLBL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "GLWL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    nop

    :try_start_1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_9
    if-eqz v2, :cond_10

    goto :goto_6

    :goto_4
    nop

    :try_start_2
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_a
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_b
    if-eqz v2, :cond_10

    goto :goto_6

    :goto_5
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_d
    throw v3

    :cond_e
    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_f
    if-eqz v2, :cond_10

    :goto_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_10
    return-object v0
.end method

.method protected getLaunchPolicyDatabaseVersion()Landroid/util/ArrayMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModePolicyManager$LaunchPolicyDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz v2, :cond_7

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "LaunchPackageVersion"

    const-string/jumbo v3, "reason"

    const-string/jumbo v4, "version"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    nop

    :try_start_1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_2
    if-eqz v2, :cond_9

    goto :goto_5

    :goto_3
    nop

    :try_start_2
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_3
    nop

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_4
    if-eqz v2, :cond_9

    goto :goto_5

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_6
    throw v3

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_8
    if-eqz v2, :cond_9

    :goto_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    :cond_9
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
