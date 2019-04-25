.class public Lcom/samsung/android/rlc/db/PushFilterDBHandler;
.super Ljava/lang/Object;
.source "PushFilterDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    return-void
.end method

.method private close(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "messageid"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pushfilter"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "DB insert fail"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return v0

    :goto_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM pushfilter WHERE _id IN (SELECT * FROM((SELECT _id FROM pushfilter ORDER BY _id ASC LIMIT 10 )) AS A)"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "DB delete fail"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8

    const-string/jumbo v1, "pushfilter"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isSameMessageID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-virtual {v3}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    :cond_0
    if-nez v0, :cond_3

    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]PushFilter DB STATE : CURSOR IS NULL!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v5, "DB CLOSE FAIL"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_2
    :goto_2
    nop

    :goto_3
    monitor-exit p0

    return v1

    :cond_3
    :try_start_3
    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]PushFilter DB STATE : Total Data count. Remind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "messageid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Recived MessageID Value -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Comparing MessageID in DataBase "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    :goto_5
    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Already saved same data in DB."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : No saved same data in DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :goto_7
    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_8

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : DB IS FULL! Delete start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v5, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]PushFilter DB STATE : Delete success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    sget-object v5, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]PushFilter DB STATE : Delete fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_8
    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Saving new data into DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4, p1, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v6, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]PushFilter DB STATE : Save Success into DB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    sget-object v6, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]PushFilter DB STATE : Save Fail into DB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :goto_9
    if-eqz v0, :cond_b

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catch_1
    move-exception v3

    goto :goto_b

    :cond_b
    :goto_a
    if-eqz v2, :cond_c

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_d

    :goto_b
    nop

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v5, "DB CLOSE FAIL"

    :goto_c
    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_10

    :cond_c
    :goto_d
    goto :goto_10

    :catchall_0
    move-exception v3

    goto :goto_11

    :catch_2
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_d

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :catchall_1
    move-exception p1

    goto :goto_15

    :catch_3
    move-exception v3

    goto :goto_f

    :cond_d
    :goto_e
    if-eqz v2, :cond_c

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_d

    :goto_f
    nop

    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v5, "DB CLOSE FAIL"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_c

    :goto_10
    monitor-exit p0

    return v1

    :goto_11
    nop

    if-eqz v0, :cond_e

    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :catch_4
    move-exception v4

    goto :goto_13

    :cond_e
    :goto_12
    if-eqz v2, :cond_f

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_14

    :goto_13
    nop

    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v5, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v6, "DB CLOSE FAIL"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_f
    :goto_14
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_15
    monitor-exit p0

    throw p1
.end method
