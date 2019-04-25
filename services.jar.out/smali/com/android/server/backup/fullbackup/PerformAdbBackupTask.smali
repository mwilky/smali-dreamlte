.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field mCompress:Z

.field private final mCurrentOpToken:I

.field mCurrentPassword:Ljava/lang/String;

.field mCurrentTarget:Landroid/content/pm/PackageInfo;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mExtraFlag:I

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field mKeyValue:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrivilegeApp:Z

.field mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iput v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p14, :cond_0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_2
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    move/from16 v1, p17

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->isYuvaSupported()Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v0, "BackupManagerService"

    const-string v1, "Backup Manager Yuva is Supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_3
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v2

    const-string v4, "PBKDF2WithHmacSHA1"

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    const/16 v6, 0x2710

    invoke-static {v4, v5, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    const/16 v5, 0x20

    new-array v5, v5, [B

    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v3

    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v10, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v11, p2

    invoke-direct {v10, v11, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string v12, "AES-256"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, "AES/CBC/PKCS5Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    invoke-virtual {v13, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    const-string v15, "PBKDF2WithHmacSHA1"

    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    invoke-static {v15, v12, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v6

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    array-length v15, v9

    array-length v0, v14

    add-int/2addr v15, v0

    array-length v0, v6

    add-int/2addr v15, v0

    add-int/lit8 v15, v15, 0x3

    invoke-direct {v12, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v12

    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v15, v9

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v12, v9}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v14

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v12, v14}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v6

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    move-object/from16 v16, v0

    invoke-static {v15}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v10
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v2

    const/high16 v3, 0x8000000

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getEdmUserId()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "BackupManagerService"

    const-string v4, "Fail to obtain package\'s info for backup - mdm request"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    goto :goto_3

    :cond_1
    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_3

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    const/16 v4, 0xa0

    if-gt v2, v4, :cond_3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "BackupManagerService"

    const-string v4, "Fail to obtain package info for backup - Nowner request"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    goto :goto_3

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public execute()V
    .locals 0

    return-void
.end method

.method public handleCancel(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adb backup cancel of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 38

    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_0

    const-string v0, ", including key-value backups"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v14, v0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v13, v0

    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerYuva;->sendStartBackupCallback(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    const/high16 v0, 0x8000000

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-boolean v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-eq v4, v10, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v10

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v0, :cond_5

    nop

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v15, v13, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_5
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v15, v13, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    if-eqz v0, :cond_7

    iget v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_b

    :cond_7
    invoke-virtual {v13}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v11}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is key-value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not eligible for backup, removing."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    goto :goto_2

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v7, v0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_0
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_26
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_c

    move v0, v10

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_2b

    :catch_0
    move-exception v0

    :goto_5
    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_21

    :catch_1
    move-exception v0

    :goto_6
    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_25

    :cond_c
    move v0, v1

    :goto_7
    move/from16 v16, v0

    :try_start_2
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_26
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    if-nez v0, :cond_10

    :try_start_3
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v16, :cond_10

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "BackupManagerService"

    const-string v1, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    if-eqz v2, :cond_e

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_e
    :goto_8
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :goto_9
    nop

    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_5
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_f
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_10
    move-object v4, v7

    :try_start_7
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_26
    .catchall {:try_start_7 .. :try_end_7} :catchall_13

    if-nez v0, :cond_14

    :try_start_8
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    if-nez v0, :cond_14

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_11
    if-eqz v2, :cond_12

    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_12
    :goto_b
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_d

    :goto_c
    nop

    const-string v1, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_a
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_13
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :cond_14
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v0

    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_26
    .catchall {:try_start_c .. :try_end_c} :catchall_13

    if-eqz v0, :cond_15

    :try_start_d
    const-string v0, "\n1\n"
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_e

    :cond_15
    :try_start_e
    const-string v0, "\n0\n"

    :goto_e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_26
    .catchall {:try_start_e .. :try_end_e} :catchall_13

    if-eqz v16, :cond_16

    :try_start_f
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {v15, v6, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v4, v0

    goto :goto_f

    :catch_4
    move-exception v0

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_1d

    :cond_16
    :try_start_10
    const-string/jumbo v0, "none\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    iget-boolean v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_28
    .catchall {:try_start_10 .. :try_end_10} :catchall_13

    if-eqz v5, :cond_17

    :try_start_11
    new-instance v5, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v5, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v1, v5

    new-instance v5, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v5, v4, v1, v10}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-object v4, v5

    :cond_17
    move-object/from16 v18, v4

    move-object/from16 v5, v18

    nop

    :try_start_12
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_20
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    if-eqz v0, :cond_18

    :try_start_13
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v3, v0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v31, v3

    move-object v3, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_2d

    :catch_6
    move-exception v0

    move-object v2, v5

    goto/16 :goto_5

    :catch_7
    move-exception v0

    move-object v2, v5

    goto/16 :goto_6

    :catch_8
    move-exception v0

    const/4 v2, 0x0

    :goto_10
    :try_start_15
    const-string v1, "BackupManagerService"

    const-string v4, "Unable to find shared-storage backup handler"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    :cond_19
    :goto_11
    :try_start_16
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_20
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    nop

    :goto_12
    move v4, v2

    if-ge v4, v0, :cond_1e

    :try_start_17
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_19
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    move-object v3, v1

    :try_start_18
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :try_start_19
    const-string v10, "--- Performing full backup for package "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ---"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v17, v1

    new-instance v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v19, 0x0

    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_16
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_15
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    const-wide v20, 0x7fffffffffffffffL

    move-object/from16 v27, v8

    :try_start_1a
    iget v8, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_13
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    const/16 v22, 0x0

    move-object/from16 v28, v11

    :try_start_1b
    iget v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move/from16 v29, v11

    iget-boolean v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    move/from16 v30, v11

    iget v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_11
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move/from16 v23, v1

    move-object v1, v10

    move-object/from16 v31, v3

    move-object v3, v5

    move/from16 v24, v4

    move-object/from16 v4, v19

    move-object/from16 v32, v5

    move-object/from16 v5, v31

    move-object/from16 v33, v6

    move/from16 v6, v23

    move-object/from16 v34, v7

    move-object v7, v15

    move/from16 v19, v8

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-wide/from16 v8, v20

    move-object/from16 v36, v10

    move/from16 v10, v19

    move/from16 v21, v11

    move-object/from16 v26, v28

    move/from16 v19, v29

    move/from16 v20, v30

    move/from16 v11, v22

    move-object/from16 v37, v12

    move/from16 v12, v19

    move-object/from16 v28, v13

    move/from16 v13, v20

    move-object/from16 v29, v14

    move/from16 v14, v21

    :try_start_1c
    invoke-direct/range {v1 .. v14}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIIIZI)V

    move-object/from16 v1, v36

    iput-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v17, :cond_1a

    :try_start_1d
    const-string v1, "Shared storage"
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    move-object v2, v1

    move-object/from16 v1, v31

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v32

    move-object/from16 v1, v35

    move-object/from16 v5, v37

    const/4 v6, 0x1

    goto/16 :goto_2d

    :catch_9
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    move-object/from16 v1, v35

    move-object/from16 v5, v37

    goto/16 :goto_18

    :catch_a
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    move-object/from16 v1, v35

    move-object/from16 v5, v37

    goto/16 :goto_19

    :cond_1a
    move-object/from16 v1, v31

    :try_start_1e
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_13
    invoke-virtual {v15, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    iput-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    iget-boolean v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    if-eqz v2, :cond_1c

    if-nez v17, :cond_1c

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    :try_start_1f
    invoke-virtual {v5, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v3

    if-nez v3, :cond_1d

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_1b
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure writing OBB stack for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :catchall_5
    move-exception v0

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_2c

    :catch_b
    move-exception v0

    move-object v3, v1

    move-object/from16 v1, v35

    goto/16 :goto_18

    :catch_c
    move-exception v0

    move-object v3, v1

    move-object/from16 v1, v35

    goto/16 :goto_19

    :cond_1c
    move-object/from16 v2, v32

    move-object/from16 v5, v37

    :cond_1d
    add-int/lit8 v3, v24, 0x1

    move-object v12, v5

    move-object/from16 v11, v26

    move-object/from16 v9, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    const/4 v10, 0x1

    move-object v5, v2

    move v2, v3

    move-object v3, v1

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_2d

    :catch_d
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_21

    :catch_e
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_25

    :catchall_7
    move-exception v0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_2d

    :catch_f
    move-exception v0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_21

    :catch_10
    move-exception v0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_25

    :catchall_8
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v5, v12

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_2d

    :catch_11
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v5, v12

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_21

    :catch_12
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v5, v12

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_25

    :catchall_9
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_2d

    :catch_13
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_21

    :catch_14
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_25

    :catchall_a
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v1

    move-object v3, v2

    move-object v1, v8

    const/4 v6, 0x1

    goto :goto_14

    :catch_15
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    const/4 v6, 0x1

    goto :goto_15

    :catch_16
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    const/4 v6, 0x1

    goto :goto_16

    :catchall_b
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v1

    move-object v3, v2

    move-object v1, v8

    move v6, v10

    :goto_14
    move-object v2, v0

    goto/16 :goto_2d

    :catch_17
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    :goto_15
    goto/16 :goto_21

    :catch_18
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    :goto_16
    goto/16 :goto_25

    :catchall_c
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v3

    move-object v1, v8

    move v6, v10

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2d

    :catch_19
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    goto/16 :goto_21

    :catch_1a
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    goto/16 :goto_25

    :cond_1e
    move-object v2, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :try_start_20
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1e
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-eqz v1, :cond_1f

    move-object/from16 v1, v35

    :try_start_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--- Performing key-value backup for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v8, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v24

    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v25

    move-object/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    invoke-direct/range {v19 .. v25}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/BackupManagerServiceInterface;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1b
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    goto :goto_17

    :catchall_d
    move-exception v0

    move-object/from16 v31, v3

    const/4 v6, 0x1

    goto/16 :goto_2b

    :catch_1b
    move-exception v0

    :goto_18
    const/4 v6, 0x1

    goto/16 :goto_21

    :catch_1c
    move-exception v0

    :goto_19
    const/4 v6, 0x1

    goto/16 :goto_25

    :cond_1f
    move-object/from16 v1, v35

    :cond_20
    :try_start_22
    invoke-direct {v15, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1b
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    if-eqz v2, :cond_21

    :try_start_23
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1a

    :catch_1d
    move-exception v0

    goto :goto_1b

    :cond_21
    :goto_1a
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1d

    goto :goto_1c

    :goto_1b
    nop

    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_24
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_29

    goto/16 :goto_29

    :catchall_e
    move-exception v0

    :try_start_25
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    throw v0

    :catchall_f
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_2a

    :catchall_10
    move-exception v0

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object/from16 v31, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2d

    :catch_1e
    move-exception v0

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_21

    :catch_1f
    move-exception v0

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_25

    :catchall_11
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2d

    :catch_20
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_21

    :catch_21
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_25

    :catch_22
    move-exception v0

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :goto_1d
    move-object v7, v0

    :try_start_26
    const-string v0, "BackupManagerService"

    const-string v8, "Unable to emit archive header"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_22
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->setEdmBackupFail(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_25
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_24
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    if-eqz v2, :cond_23

    :try_start_27
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1e

    :catch_23
    move-exception v0

    goto :goto_1f

    :cond_23
    :goto_1e
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_23

    goto :goto_20

    :goto_1f
    nop

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IO error closing adb backup file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    iget-object v8, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v8

    :try_start_28
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_24
    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v6, "Full backup pass complete."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_12
    move-exception v0

    :try_start_29
    monitor-exit v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    throw v0

    :catch_24
    move-exception v0

    goto :goto_21

    :catch_25
    move-exception v0

    goto/16 :goto_25

    :catchall_13
    move-exception v0

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2d

    :catch_26
    move-exception v0

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :goto_21
    :try_start_2a
    const-string v4, "BackupManagerService"

    const-string v7, "Internal exception during full backup"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_25

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    :cond_25
    if-eqz v2, :cond_26

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_22

    :catch_27
    move-exception v0

    goto :goto_23

    :cond_26
    :goto_22
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_27

    goto :goto_24

    :goto_23
    nop

    const-string v4, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_2c
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_29

    goto :goto_29

    :catchall_14
    move-exception v0

    :try_start_2d
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    throw v0

    :catch_28
    move-exception v0

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :goto_25
    :try_start_2e
    const-string v4, "BackupManagerService"

    const-string v7, "App died during full backup"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_27

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_16

    :cond_27
    if-eqz v2, :cond_28

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_26

    :catch_29
    move-exception v0

    goto :goto_27

    :cond_28
    :goto_26
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_29

    goto :goto_28

    :goto_27
    nop

    const-string v4, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_30
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_29

    :goto_29
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_29
    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :catchall_15
    move-exception v0

    :try_start_31
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_15

    throw v0

    :catchall_16
    move-exception v0

    :goto_2a
    move-object/from16 v31, v3

    :goto_2b
    move-object v3, v2

    :goto_2c
    move-object v2, v0

    :goto_2d
    if-eqz v3, :cond_2a

    :try_start_32
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_2e

    :catch_2a
    move-exception v0

    goto :goto_2f

    :cond_2a
    :goto_2e
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_2a

    goto :goto_30

    :goto_2f
    nop

    const-string v4, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_33
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_2b
    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    :catchall_17
    move-exception v0

    :try_start_34
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_17

    throw v0
.end method
