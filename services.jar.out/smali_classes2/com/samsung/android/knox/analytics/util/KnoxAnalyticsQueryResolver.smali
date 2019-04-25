.class public Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;
.super Ljava/lang/Object;
.source "KnoxAnalyticsQueryResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(Landroid/content/Context;JLjava/lang/String;I)J
    .locals 10

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getUriFromType(I)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    sget-object v5, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v6, "addEvent(): null ret uri"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v7, "addEvent(): null ret uri"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_1
    nop

    :try_start_0
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v6

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v7, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEvent(): error parsing return id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent(): actualId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method public static addVersioningBlob(Landroid/content/Context;ILjava/lang/String;J)J
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eventId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    sget-object v5, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v6, "addVersioningBlob(): null ret uri"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_0
    nop

    :try_start_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v7, "addVersioningBlob(): error parsing return id"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v3
.end method

.method public static callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "targetDbSize"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "databaseClean"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v3

    return-object v3
.end method

.method public static callNotifyVersioningCompleted(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callNotifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "notifyVersioningCompleted"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getDatabaseSize(Landroid/content/Context;)J
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getDatabaseSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseSize;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v3, v5

    :cond_1
    nop

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {v2, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-wide v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_3
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getDatabaseSize(): empty cursor"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-static {v2, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    return-wide v3

    :goto_1
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    :try_start_6
    invoke-static {v2, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDatabaseSize(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static getEventCount(Landroid/content/Context;)J
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "count"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getEventCount(): empty cursor"

    invoke-static {v2, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v4, v6

    :cond_2
    nop

    if-eqz v1, :cond_3

    :try_start_4
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    return-wide v4

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    if-eqz v1, :cond_4

    :try_start_6
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v2
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEventCount(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static getFeaturesBlacklist(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getFeaturesBlacklist(): empty cursor"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v3

    :cond_1
    :try_start_3
    const-string v3, "feature"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "disable_type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    new-instance v6, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_0
    invoke-direct {v6, v7, v8}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_2

    nop

    if-eqz v2, :cond_4

    :try_start_4
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    return-object v5

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_1
    if-eqz v2, :cond_5

    :try_start_6
    invoke-static {v4, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLastEventId(Landroid/content/Context;)J
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getLastEventId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "lastEventId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v6

    :cond_1
    nop

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-wide v4

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_3
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getLastEventId(): empty cursor"

    invoke-static {v2, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    return-wide v4

    :goto_1
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    :try_start_6
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v2
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastEventId(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static getUriFromType(I)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v2, "getUriFromType(): not URI associated with this log type"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVersioningBlob(Landroid/content/Context;)[Ljava/lang/String;
    .locals 10

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "-1"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVersioningBlob() - id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v6

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    if-eqz v2, :cond_2

    :try_start_2
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    return-object v3

    :cond_3
    :goto_0
    :try_start_3
    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v5, "getVersioningBlob(): empty cursor"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v2, :cond_4

    :try_start_4
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    return-object v3

    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_1
    if-eqz v2, :cond_5

    :try_start_6
    invoke-static {v4, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
