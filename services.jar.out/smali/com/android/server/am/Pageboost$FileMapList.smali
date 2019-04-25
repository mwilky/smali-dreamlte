.class final Lcom/android/server/am/Pageboost$FileMapList;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileMapList"
.end annotation


# static fields
.field private static final mNodeName:Ljava/lang/String; = "filemap_list"


# instance fields
.field private mCorrectness:Z

.field private mFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPid:I


# direct methods
.method constructor <init>(I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mPid:I

    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iput p1, p0, Lcom/android/server/am/Pageboost$FileMapList;->mPid:I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "filemap pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "filemap_list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    const-string v3, ""

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/am/Pageboost$FileMapList;->add(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "filemap pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", done correctly"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    :goto_1
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/Pageboost$FileMapList;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    return-object v0
.end method

.method private add(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public contain(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mFiles:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public isCorrect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$FileMapList;->mCorrectness:Z

    return v0
.end method
