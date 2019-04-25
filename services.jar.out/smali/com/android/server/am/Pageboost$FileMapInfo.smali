.class final Lcom/android/server/am/Pageboost$FileMapInfo;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileMapInfo"
.end annotation


# static fields
.field private static final mNodeName:Ljava/lang/String; = "filemap_info"


# instance fields
.field private mCorrectness:Z

.field private mPid:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/Pageboost$FileMapInfo;Ljava/lang/String;ZLjava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/Pageboost$FileMapInfo;->getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFileMapInfo(Ljava/lang/String;ZLjava/lang/String;)J
    .locals 22

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    iget-boolean v0, v1, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    const/4 v0, 0x0

    move-object v4, v0

    :try_start_0
    const-string v0, ""

    iget v5, v1, Lcom/android/server/am/Pageboost$FileMapInfo;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "filemap_info"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v6

    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v4, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    new-array v7, v13, [Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v7

    move-wide v15, v2

    move v2, v13

    :goto_0
    :try_start_2
    array-length v3, v14

    if-ge v2, v3, :cond_5

    aget-byte v3, v14, v2

    const/16 v7, 0xa

    const/16 v17, 0x1

    if-ne v3, v7, :cond_4

    invoke-static {v14, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v11, v7

    const-string v7, " "

    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    array-length v7, v8

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    aget-object v7, v8, v13

    const-string/jumbo v9, "mapped"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget-object v7, v8, v17

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v18, 0x1000

    mul-long v18, v18, v9

    add-long v15, v15, v18

    goto :goto_2

    :cond_1
    aget-object v7, v8, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v7, v8, v17

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move/from16 v18, v7

    add-int/lit8 v7, v2, 0x1

    add-int v10, v2, v18

    add-int/lit8 v10, v10, 0x1

    invoke-static {v14, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    add-int v7, v2, v18

    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v19, v2, 0x1

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1300()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object/from16 v7, p3

    move-object/from16 v20, v8

    move-object v8, v12

    move-object/from16 v21, v11

    move/from16 v11, v18

    invoke-static/range {v6 .. v11}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BI)V

    goto :goto_1

    :cond_2
    move-object/from16 v20, v8

    move-object/from16 v21, v11

    :goto_1
    move/from16 v6, v19

    goto :goto_2

    :cond_3
    move-object/from16 v20, v8

    move-object/from16 v21, v11

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "unknown error during parsing of filemap_info"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    :goto_4
    move-wide v15, v2

    :goto_5
    move-object v2, v0

    if-eqz v4, :cond_6

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-wide v15
.end method


# virtual methods
.method public isCorrect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapInfo;->mCorrectness:Z

    return v0
.end method
