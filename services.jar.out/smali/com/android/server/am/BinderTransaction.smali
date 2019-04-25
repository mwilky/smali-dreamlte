.class public Lcom/android/server/am/BinderTransaction;
.super Ljava/lang/Object;
.source "BinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    }
.end annotation


# static fields
.field static final BINDER_PROCS_COLLECTOR_TIMEOUT:J = 0x7530L

.field private static final BINDER_TRANSACTION_GROUP_DIRECTION:I = 0x1

.field private static final BINDER_TRANSACTION_GROUP_TO_PID:I = 0x6

.field private static LOG_ERROR_HEADER:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String; = null

.field private static LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String; = null

.field private static final PID_PROC_NATIVE:I = 0x1

.field private static final PID_PROC_UNKNOWN:I = -0x1

.field private static final PID_PROC_VM:I = 0x0

.field private static final REGEX_BINDER_TRANSACTION:Ljava/lang/String; = "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

.field static final TAG:Ljava/lang/String; = "BinderTransaction"

.field static sBinderPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*(outgoing|incoming|pending)\\s+transaction\\s+(-?\\d+):\\s+(-?\\w+)\\s+from\\s+(-?\\d+):(-?\\d+)\\s+to\\s+(-?\\d+):(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    const-string v0, "ERROR: "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    const-string/jumbo v0, "failed to get the binder transaction info of pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    const-string/jumbo v0, "failed to get the process types, stack traces will not be added"

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    const-string/jumbo v0, "failed to get whole binder transaction info from pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    const-string v0, "binder proc file not exist. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    const-string v0, "binder proc file is not readable. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    const-string v0, "binder proc file not found. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    const-string v0, "binder proc file io error. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    const-string v0, "could not get the pid of zygote"

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    const-string v0, "could not get the process type. drop pid "

    sput-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BinderTransaction;->findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BinderTransaction;->separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findBinderTransactions(ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BinderTransaction;->getBinderProcFileName(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_1

    const-string v0, "BinderTransaction"

    const-string v1, "Binder proc file not exist."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v12

    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1a

    :cond_2
    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v14, v0

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v15, v0

    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, v0

    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_4

    invoke-direct {v7, v5}, Lcom/android/server/am/BinderTransaction;->matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    move-object v1, v7

    move-object v2, v0

    move-object v3, v5

    move-object/from16 v4, p2

    move-object/from16 v16, v5

    move-object v5, v8

    move-object v12, v6

    move-object v6, v9

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BinderTransaction;->parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v12

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v3, v12

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v3, v12

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v3, v12

    goto/16 :goto_8

    :cond_3
    move-object/from16 v16, v5

    move-object v12, v6

    :goto_1
    move-object v6, v12

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    move-object v12, v6

    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    nop

    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_3
    nop

    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v12, v6

    move-object v1, v0

    move-object v3, v12

    move-object v2, v15

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move-object v12, v6

    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v12, v6

    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_e

    :catch_8
    move-exception v0

    move-object v12, v6

    move-object v3, v12

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_5
    move-object v2, v15

    goto/16 :goto_16

    :catch_9
    move-exception v0

    :goto_6
    move-object v1, v14

    move-object v2, v15

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_7
    move-object v1, v14

    move-object v2, v15

    goto :goto_e

    :catch_b
    move-exception v0

    :goto_8
    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v1, v14

    goto :goto_a

    :catch_d
    move-exception v0

    move-object v1, v14

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v1, v14

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v14, v1

    :goto_9
    move-object v1, v0

    goto/16 :goto_16

    :catch_f
    move-exception v0

    :goto_a
    :try_start_8
    const-string v4, "BinderTransaction"

    const-string v5, "Unexpected error during binder proc file processing."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/4 v13, 0x1

    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    goto :goto_b

    :catch_10
    move-exception v0

    :cond_5
    :goto_b
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    goto :goto_c

    :catch_11
    move-exception v0

    :cond_6
    :goto_c
    if-eqz v1, :cond_b

    :goto_d
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_14

    :catch_12
    move-exception v0

    goto/16 :goto_14

    :catch_13
    move-exception v0

    :goto_e
    :try_start_c
    const-string v4, "BinderTransaction"

    const-string v5, "Binder proc file read io error."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IO_ERROR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/4 v13, 0x1

    if-eqz v3, :cond_7

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14

    goto :goto_f

    :catch_14
    move-exception v0

    :cond_7
    :goto_f
    if-eqz v2, :cond_8

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_15

    goto :goto_10

    :catch_15
    move-exception v0

    :cond_8
    :goto_10
    if-eqz v1, :cond_b

    goto :goto_d

    :catch_16
    move-exception v0

    :goto_11
    :try_start_f
    const-string v4, "BinderTransaction"

    const-string v5, "Binder proc file not found. "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_NOT_FOUND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v13, 0x1

    if-eqz v3, :cond_9

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17

    goto :goto_12

    :catch_17
    move-exception v0

    :cond_9
    :goto_12
    if-eqz v2, :cond_a

    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_18

    goto :goto_13

    :catch_18
    move-exception v0

    :cond_a
    :goto_13
    if-eqz v1, :cond_b

    goto :goto_d

    :cond_b
    :goto_14
    if-nez v13, :cond_c

    const/4 v12, 0x1

    goto :goto_15

    :cond_c
    const/4 v12, 0x0

    :goto_15
    return v12

    :goto_16
    if-eqz v3, :cond_d

    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_19

    goto :goto_17

    :catch_19
    move-exception v0

    :cond_d
    :goto_17
    if-eqz v2, :cond_e

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1a

    goto :goto_18

    :catch_1a
    move-exception v0

    :cond_e
    :goto_18
    if-eqz v14, :cond_f

    :try_start_14
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1b

    goto :goto_19

    :catch_1b
    move-exception v0

    :cond_f
    :goto_19
    throw v1

    :cond_10
    :goto_1a
    const-string v0, "BinderTransaction"

    const-string v1, "Binder proc file is not readable."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_BINDER_PROC_FILE_IS_NOT_READABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1
.end method

.method private getProcessTypeOfPid(I[I)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/BinderTransaction;->getParentPid(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p2, v3

    if-ne v0, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method private makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_HEADER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBinderTransactionsLogFooter(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- end binder transactions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeBinderTransactionsLogHeader(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- binder transactions from pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private matchBinderTransactionLine(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1

    sget-object v0, Lcom/android/server/am/BinderTransaction;->sBinderPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method private parseBinderTransactionLine(Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "outgoing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private separatePidsByProcessType(Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/BinderTransaction$BinderProcsInfo;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "zygote"

    const-string/jumbo v1, "zygote64"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BinderTransaction;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/server/am/BinderTransaction;->getProcessTypeOfPid(I[I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v5, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_2

    iget-object v5, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->nativePids:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v5, "BinderTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get the process type. drop pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PROCESS_TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_3
    return v5

    :cond_4
    :goto_2
    const-string v2, "BinderTransaction"

    const-string v3, "Could not get the pid of zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_COULD_NOT_GET_THE_PID_OF_ZYGOTE:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected getBinderProcFileName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .locals 7

    new-instance v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v0}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/am/BinderTransaction$1;

    const-string v3, "BinderProcsCollector"

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/android/server/am/BinderTransaction$1;-><init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0x7530

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BinderTransaction"

    const-string v4, "ERROR! binderProc thread timed out! failed to get binder info."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "BinderTransaction"

    const-string v5, "ERROR! binderProc thread has interrupted!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    move-object v3, v0

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {v3}, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;-><init>()V

    iget-object v4, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogHeader(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/BinderTransaction;->LOG_ERROR_LINE_FAILED_TO_GET_WHOLE_BINDER_TRANSACTION_INFO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsErrorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/BinderTransaction;->makeBinderTransactionsLogFooter(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v3

    :goto_3
    throw v3
.end method

.method protected getParentPid(I)I
    .locals 1

    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    return v0
.end method

.method protected getPidsForCommands([Ljava/lang/String;)[I
    .locals 1

    invoke-static {p1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
