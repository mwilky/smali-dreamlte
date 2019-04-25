.class Lcom/android/server/power/ShutdownThread$LogFileWriter;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogFileWriter"
.end annotation


# static fields
.field private static final FILELOG_EXTENTION:Ljava/lang/String; = "txt"

.field private static final MAX_TIMESTAMP_FILELOG:I = 0x5


# instance fields
.field private file:Ljava/io/File;

.field private fos:Ljava/io/FileOutputStream;

.field private latestfile:Ljava/io/File;

.field private latestfos:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "latest_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->file:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfile:Ljava/io/File;

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.LogFileWriter error"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create dir fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "ShutdownThread"

    const-string v4, "!@Create dir error"

    invoke-static {v3, v4, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    return-object v2

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v5, :cond_4

    const-string v3, "%s.%d.%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string/jumbo v6, "txt"

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6

    :cond_5
    return-object v2
.end method


# virtual methods
.method public save()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.save fail"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method

.method public saveAndClose()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.saveAndClose fail"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.saveAndClose error"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    nop

    :goto_1
    return-void

    :goto_2
    nop

    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    :cond_5
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    goto :goto_3

    :catch_2
    move-exception v0

    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.saveAndClose error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_3
    throw v1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    const-string v0, "fos is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p1, v3, v4

    const/4 v4, 0x7

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->latestfos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "LogFileWriter.write fail"

    invoke-static {p1, v3, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method
