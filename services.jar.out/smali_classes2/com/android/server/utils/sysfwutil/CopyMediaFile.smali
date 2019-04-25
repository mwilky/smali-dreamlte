.class public Lcom/android/server/utils/sysfwutil/CopyMediaFile;
.super Ljava/lang/Object;
.source "CopyMediaFile.java"


# static fields
.field private static final FILE_MODE:I = 0x1fd

.field private static final FOLDER_MODE:I = 0x1b4

.field private static final MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

.field private static final MEDIA_FILE_PATH_TARGET:Ljava/io/File;

.field private static final PROPERTY_FIRST_BOOT:Ljava/lang/String; = "persist.sys.vold.firstboot"

.field private static final TAG:Ljava/lang/String; = "CopyMediaFile"

.field private static copySuccess:Z = false

.field private static firstBoot:Z = false

.field private static hasOdmPath:Z = false

.field private static final media_rw:I = 0x3ff


# instance fields
.field private fin:Ljava/io/FileInputStream;

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field private fout:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/hidden/INTERNAL_SDCARD"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/media/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_TARGET:Ljava/io/File;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    sput-boolean v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    sput-boolean v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fis:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fos:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const-string v0, "CopyMediaFile"

    const-string v1, "Started : CopyMediaFile"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    const-string v0, "CopyMediaFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " src : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / dest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1fd

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CopyMediaFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error chmod or chown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    array-length v3, v0

    if-gtz v3, :cond_1

    goto :goto_3

    :cond_1
    nop

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    if-eqz v2, :cond_2

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CopyMediaFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File already Exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    goto/16 :goto_a

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    iget-object v3, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_b

    :try_start_3
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v0, :cond_8

    :try_start_5
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_b

    :try_start_6
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_7
    goto :goto_a

    :catch_5
    move-exception v0

    :try_start_7
    const-string v1, "CopyMediaFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error chmod or chown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v0, :cond_9

    :try_start_8
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_b

    :try_start_9
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_7
    move-exception v0

    :try_start_a
    const-string v1, "CopyMediaFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v0, :cond_a

    :try_start_b
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_b

    :try_start_c
    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_7

    :cond_b
    :goto_a
    return-void

    :goto_b
    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v1, :cond_c

    :try_start_d
    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_c

    :catch_9
    move-exception v1

    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_d

    :try_start_e
    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_d

    :catch_a
    move-exception v1

    :cond_d
    :goto_d
    throw v0
.end method


# virtual methods
.method public copyMpFile()V
    .locals 4

    const-string v0, "CopyMediaFile"

    const-string v1, "copyMpFile++"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

    sget-object v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_TARGET:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CopyMediaFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMpFile Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "CopyMediaFile"

    const-string v1, "copyMpFile--"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "CopyMediaFile: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " firstBoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " hasOdmPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " copySuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOdm()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/odm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CopyMediaFile"

    const-string v2, "Odm is exist!"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    return v1

    :cond_0
    const-string v1, "CopyMediaFile"

    const-string v2, "Odm is not eexist"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isFirstBoot()Z
    .locals 3

    const-string/jumbo v0, "persist.sys.vold.firstboot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CopyMediaFile"

    const-string v2, "This is not a first boot!"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, "CopyMediaFile"

    const-string v2, "This is a first boot!, So set property"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.sys.vold.firstboot"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    return v1
.end method
