.class Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
.super Ljava/lang/Object;
.source "DatabaseCryptoAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

.field private final mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

.field private mVersioningCompleted:Z

.field private mVersioningCompletedLock:Ljava/lang/Object;

.field private mVersioningIdCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    new-instance v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->testAnalyticsLegacyKey()V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->testCryptoKey()V

    return-void
.end method

.method private addEvents(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encrypt(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cursorToContentValues(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "cursorToContentValues()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    const-string v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "vid"

    const-string/jumbo v3, "vid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data"

    const-string v3, "data"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private testAnalyticsLegacyKey()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "testAnalyticsLegacyKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->checkAnalyticsLegacyKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->updateAnalyticsLegacyKey()V

    :cond_0
    return-void
.end method

.method private testCryptoKey()V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "testCryptoKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->safetyTestKeyStoreEncryptionInvalidKeyException()Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->testDecryption()Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "testCryptoKey(): testEncryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "testCryptoKey(): testDecryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteAllEvents()J

    :cond_1
    return-void
.end method

.method private testDecryption()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "testDecryption()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventCountValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    nop

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->isDecryptionKeyErrorHappened()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateAnalyticsLegacyKey()V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAnalyticsLegacyKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventCountValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->cursorToContentValues(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "query empty cursor"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    nop

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteAllEvents()J

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->deleteAnalyticsLegacyKey()V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addEvents(Ljava/util/List;)V

    return-void

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private updateVersioningCache(Landroid/database/Cursor;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVersioningCache()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addCleanedEvent(Landroid/content/ContentValues;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addCleanedEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    const-string/jumbo v0, "vid"

    iget v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public addEvent(Landroid/content/ContentValues;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encrypt(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->waitVersioningCompleted()V

    const-string/jumbo v0, "vid"

    iget v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addEvent(Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public addFeatureBlacklist(Landroid/content/ContentValues;)J
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v5, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v6, "addFeatureBlacklist(): null value"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureBlacklist(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "feature"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "disable_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addFeaturesBlacklist(Landroid/content/ContentValues;)J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_1
    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public addVersioningBlob(Landroid/content/ContentValues;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addVersioning()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->addVersioningBlob(Landroid/content/ContentValues;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningIdCache:I

    return v0
.end method

.method public deleteEventChunk(JI)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEventChunk(size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventChunk(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteFeatureBlacklist([Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeaturesBlacklist([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteFromVersion(J)J
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFromVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteUntilTargetDbSize(J)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUntilTargetDbSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public deleteUpTo(J)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteUpTo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseSizeCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseSizeInBytes()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeInBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventChunk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;-><init>(Landroid/database/Cursor;Lcom/samsung/android/knox/analytics/database/CryptoHandler;)V

    return-object v0
.end method

.method public getEventCount()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCount()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getEventCountValue()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFeatureBlacklistCursor()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getFeatureBlacklistCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getFeaturesBlacklist()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getLastId()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getLastId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getLastId()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getVersioningBlob()Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mDbHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getVersioningBlob()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->updateVersioningCache(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public notifyVersioningCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitVersioningCompleted()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompleted:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->mVersioningCompletedLock:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "waitVersioningCompleted(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method
