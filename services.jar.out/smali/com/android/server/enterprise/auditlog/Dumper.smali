.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dumper"

.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"

.field private static mTemporaryPath:Ljava/lang/String;


# instance fields
.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/temp/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method private appendFileNodeToTemporaryFile(Ljava/io/File;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/temp.gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v4

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    const/high16 v4, 0x10000

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v7, v6

    if-lez v6, :cond_1

    invoke-virtual {v2, v4, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_3
    return v5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v3

    :try_start_3
    const-string v4, "Dumper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to append file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v4

    :cond_3
    :goto_5
    return v1

    :goto_6
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v3

    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception v3

    :cond_5
    :goto_8
    throw v1

    :cond_6
    :goto_9
    const-string v0, "Dumper"

    const-string v2, "Invalid temporary directory, cannot create file"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "Dumper"

    const-string v4, "Failed to append tempHeaderFile"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Dumper"

    const-string v5, "Failed to append file node"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v3

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/temp.gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Dumper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "concatenateFiles.Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private createHeader()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    const-string v0, "----------------------------------------------\n"

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump Log Generated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :cond_1
    :goto_3
    throw v2
.end method

.method private fullDump()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v5, v11

    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v11

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v11, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v12

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v12

    new-instance v12, Ljava/io/InputStreamReader;

    const-string v13, "UTF-8"

    invoke-direct {v12, v4, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v12

    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v12

    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_6

    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/header"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v11

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_6

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v12

    const/high16 v12, 0x10000

    new-array v12, v12, [B

    :goto_2
    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v14, v13

    if-lez v13, :cond_5

    invoke-virtual {v5, v12, v10, v14}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_7
    nop

    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    const-string v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "run.IOException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    nop

    :goto_4
    if-eqz v8, :cond_8

    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close bufferedReader at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    if-eqz v4, :cond_9

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close gizp stream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close fileStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    nop

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close outStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    if-eqz v3, :cond_11

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_9
    goto/16 :goto_10

    :catch_5
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close fileStreamFull at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_0
    move-exception v10

    goto/16 :goto_11

    :catch_6
    move-exception v11

    :try_start_7
    iput-boolean v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const-string v10, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fullDump.Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_b
    if-eqz v6, :cond_c

    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_a

    :catch_7
    move-exception v10

    const-string v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "run.IOException "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    :goto_a
    nop

    :goto_b
    if-eqz v8, :cond_d

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_c

    :catch_8
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close bufferedReader at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_c
    if-eqz v4, :cond_e

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_d

    :catch_9
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close gizp stream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_d
    if-eqz v2, :cond_f

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_e

    :catch_a
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close fileStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_e
    if-eqz v5, :cond_10

    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_f

    :catch_b
    move-exception v10

    const-string v11, "Dumper"

    const-string/jumbo v12, "failed to close outStream at fullDump"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_f
    if-eqz v3, :cond_11

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_9

    :cond_11
    :goto_10
    return-void

    :goto_11
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_12
    if-eqz v6, :cond_13

    :try_start_e
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_12

    :catch_c
    move-exception v11

    const-string v12, "Dumper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "run.IOException "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_13
    :goto_12
    nop

    :goto_13
    if-eqz v8, :cond_14

    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_14

    :catch_d
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close bufferedReader at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_14
    if-eqz v4, :cond_15

    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_15

    :catch_e
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close gizp stream at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_15
    if-eqz v2, :cond_16

    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_16

    :catch_f
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close fileStream at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_16
    if-eqz v5, :cond_17

    :try_start_12
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_17

    :catch_10
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close outStream at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    if-eqz v3, :cond_18

    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    goto :goto_18

    :catch_11
    move-exception v11

    const-string v12, "Dumper"

    const-string/jumbo v13, "failed to close fileStreamFull at fullDump"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_18
    throw v10
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .locals 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v9

    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v9

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v9

    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v9

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v7, v9

    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v9

    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_4

    const-string v9, " "

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    :try_start_1
    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v11

    nop

    :try_start_2
    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v11, v0, v11

    if-lez v11, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v11, v0, v11

    if-ltz v11, :cond_1

    iget-wide v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v11, v0, v11

    if-gtz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_0

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    goto :goto_0

    :catchall_0
    move-exception v9

    goto :goto_2

    :catch_1
    move-exception v9

    :try_start_3
    const-string v10, "Dumper"

    const-string/jumbo v11, "readFileLineByLine.IOException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_1
    invoke-static {v8}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    nop

    return-object v2

    :goto_2
    invoke-static {v8}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    throw v9
.end method

.method private removeTempFile()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/temp.gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Dumper"

    const-string v2, "Failed to close resource."

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private selectDumpInterval()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move-object v10, v6

    move-object v6, v4

    move v4, v3

    move-object v3, v0

    move-object v0, v9

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    new-instance v12, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string v13, "com.android.server.enterprise.auditlog"

    invoke-direct {v12, v6, v13}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v12

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_2

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    new-instance v12, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string v13, "com.android.server.enterprise.auditlog"

    invoke-direct {v12, v5, v13}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v12

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :cond_3
    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/header"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    nop

    :try_start_0
    invoke-direct {v1, v11}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    invoke-direct {v1, v11, v8}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    move v15, v14

    if-lez v14, :cond_5

    const/4 v14, 0x0

    invoke-virtual {v9, v0, v14, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_a
    if-eqz v13, :cond_b

    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v14, v0

    const-string v14, "Dumper"

    const-string/jumbo v15, "failed to close input stream file at selectDumpInterval"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_2
    if-eqz v9, :cond_12

    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    goto :goto_5

    :catch_1
    move-exception v0

    move-object v14, v0

    const-string v14, "Dumper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v14, v9

    move-object v9, v0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_3
    const-string v14, "Dumper"

    const-string v15, "SelectDumpInterval.Exception"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v0, v15}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_e
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_f
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_10
    if-eqz v13, :cond_11

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v14, v0

    const-string v14, "Dumper"

    const-string/jumbo v15, "failed to close input stream file at selectDumpInterval"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_4
    if-eqz v9, :cond_12

    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :cond_12
    :goto_5
    return-void

    :goto_6
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_15
    if-eqz v10, :cond_16

    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_16
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_17
    if-eqz v13, :cond_18

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v15, v0

    const-string v15, "Dumper"

    move-object/from16 v16, v0

    const-string/jumbo v0, "failed to close input stream file at selectDumpInterval"

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_7
    if-eqz v14, :cond_19

    :try_start_7
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v15, v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v0

    const-string v0, "Dumper"

    invoke-static {v0, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_8
    throw v9
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    array-length v4, v2

    if-ge v4, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v1, v2, v3

    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-ne v1, v4, :cond_1

    aget-byte v1, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, -0x75

    if-ne v1, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    nop

    :goto_0
    nop

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v3

    :goto_1
    nop

    nop

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v3

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw v1
.end method

.method public run()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    goto :goto_4

    :catch_0
    move-exception v0

    :goto_3
    const-string v1, "Dumper"

    const-string/jumbo v2, "run.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "Dumper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run.Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    nop

    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    goto :goto_7

    :catch_3
    move-exception v1

    const-string v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    throw v0
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    return-void
.end method
