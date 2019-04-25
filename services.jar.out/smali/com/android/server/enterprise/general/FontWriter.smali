.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final NEW_FONT_DIRECTORY:Ljava/lang/String; = "/data/app_fonts/"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    nop

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    return v2
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 744 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    const-string v3, ""

    const-wide/16 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v7, 0x400

    new-array v7, v7, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v9, v10

    if-lez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v10, v7, v8, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    goto :goto_3

    :catch_1
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_4
    goto :goto_8

    :catch_2
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : bos.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_0
    move-exception v4

    goto :goto_9

    :catch_3
    move-exception v6

    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    :goto_5
    nop

    :goto_6
    :try_start_6
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    goto :goto_7

    :catch_5
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :goto_8
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v4, v7, v4

    if-nez v4, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_7
    return-void

    :goto_9
    nop

    if-eqz v0, :cond_8

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a

    :catch_6
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : myInputStream.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_8
    :goto_a
    nop

    :goto_b
    :try_start_9
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_9
    goto :goto_c

    :catch_7
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : fOut.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    :try_start_a
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_a
    goto :goto_d

    :catch_8
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : bos.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    throw v4
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v7

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v7

    const/16 v7, 0x400

    new-array v7, v7, [B

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v9, v10

    if-lez v10, :cond_0

    invoke-virtual {v1, v7, v8, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    nop

    :goto_2
    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    nop

    :goto_4
    nop

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : bos.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_2
    :goto_5
    goto :goto_a

    :catchall_0
    move-exception v4

    goto :goto_b

    :catch_3
    move-exception v6

    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-nez v10, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : myInputStream.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    :goto_6
    nop

    :goto_7
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception v6

    sget-object v7, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v8, "copyFontFile : fOut.close() error"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_5
    :goto_8
    nop

    :goto_9
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :goto_a
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v4, v7, v4

    if-nez v4, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_6
    return-void

    :goto_b
    nop

    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    :catch_6
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : myInputStream.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_7
    :goto_c
    nop

    :goto_d
    if-eqz v0, :cond_8

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_e

    :catch_7
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : fOut.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_8
    :goto_e
    nop

    :goto_f
    if-eqz v1, :cond_9

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_10

    :catch_8
    move-exception v5

    sget-object v6, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v7, "copyFontFile : bos.close() error"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_9
    :goto_10
    throw v4
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 9

    sget-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v1, "createFontDirectory : Start"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/app_fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    nop

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v5, v4, v2

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "Font directory  : Created"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "Font directory  : Not Created"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 711 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v6}, Ljava/lang/Process;->exitValue()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot chmod"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "InterruptedException : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "IOException : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    nop

    :goto_3
    return-object v3
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/app_fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeLoc : osw.close() error"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    goto :goto_3

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeLoc : fOut.close() error"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    goto :goto_2

    :catch_3
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeLoc : osw.close() error"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :goto_3
    const-string/jumbo v1, "persist.sys.flipfontpath"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    :goto_4
    nop

    :try_start_6
    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    goto :goto_5

    :catch_4
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeLoc : osw.close() error"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    goto :goto_6

    :catch_5
    move-exception v2

    sget-object v3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeLoc : fOut.close() error"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    throw v1
.end method
