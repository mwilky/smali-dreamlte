.class public Lcom/android/server/enterprise/utils/IOExceptionHandler;
.super Ljava/lang/Object;
.source "IOExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;,
        Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor<",
            "TS;>;>(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->open()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v1, v2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->process(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_0
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_2
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    :goto_3
    goto :goto_7

    :goto_4
    nop

    :try_start_b
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :try_start_c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :goto_5
    :try_start_d
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    :try_start_e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    throw v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :catch_7
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;-><init>(Ljava/util/ArrayList;)V

    throw v2
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor<",
            "TS;>;>(TT;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_0
    .catch Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    throw v0
.end method
