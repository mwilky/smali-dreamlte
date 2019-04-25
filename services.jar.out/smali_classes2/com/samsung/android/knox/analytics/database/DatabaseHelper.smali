.class Lcom/samsung/android/knox/analytics/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final CLEANED_EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

.field private static final CLEANED_EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM cleaned_events ORDER BY + id LIMIT ?)"

.field static final CLEANED_EVENTS_TABLE:Ljava/lang/String; = "cleaned_events"

.field private static final DATABASE_NAME:Ljava/lang/String; = "analytics.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final EVENTS_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

.field private static final EVENTS_DELETE:Ljava/lang/String; = "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

.field private static final EVENTS_DELETE_UP_TO_ID:Ljava/lang/String; = "id <= ?"

.field static final EVENTS_FIELD_DATA:Ljava/lang/String; = "data"

.field static final EVENTS_FIELD_ID:Ljava/lang/String; = "id"

.field static final EVENTS_FIELD_VID:Ljava/lang/String; = "vid"

.field static final EVENTS_TABLE:Ljava/lang/String; = "events"

.field private static final FEATURES_BLACKLIST_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE features_blacklist ( feature TEXT PRIMARY KEY, disable_type INTEGER)"

.field private static final FEATURES_BLACKLIST_DELETE:Ljava/lang/String; = "feature = ?"

.field public static final FEATURES_BLACKLIST_FIELD_DISABLE:Ljava/lang/String; = "disable_type"

.field public static final FEATURES_BLACKLIST_FIELD_FEATURE:Ljava/lang/String; = "feature"

.field private static final FEATURES_BLACKLIST_TABLE:Ljava/lang/String; = "features_blacklist"

.field private static final LAST_EVENT_ID_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE internal_data ( last_event_id INTEGER )"

.field private static final LAST_EVENT_ID_FIELD:Ljava/lang/String; = "last_event_id"

.field private static final LAST_EVENT_ID_TABLE:Ljava/lang/String; = "internal_data"

.field public static final PAGE_SIZE_BYTES:I = 0x1000

.field private static final TAG:Ljava/lang/String;

.field private static final VERSIONING_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

.field private static final VERSIONING_DELETE_UP_TO_ID:Ljava/lang/String; = "id <= ?"

.field private static final VERSIONING_FIELD_DATA:Ljava/lang/String; = "data"

.field private static final VERSIONING_FIELD_ID:Ljava/lang/String; = "id"

.field private static final VERSIONING_TABLE:Ljava/lang/String; = "version"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "analytics.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCurrentVersioningId()Landroid/database/Cursor;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v1, "version"

    const-string v0, "id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object v0
.end method

.method private getTableAndWhereClauseFromType(I)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "getTableAndWhereClauseFromType(): Unknown table"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v3, "events"

    aput-object v3, v0, v2

    const-string v2, "id IN (SELECT id FROM events ORDER BY + id LIMIT ?)"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_1
    const-string v3, "cleaned_events"

    aput-object v3, v0, v2

    const-string v2, "id IN (SELECT id FROM cleaned_events ORDER BY + id LIMIT ?)"

    aput-object v2, v0, v1

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

.method private putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "putLastIdDefaultValue()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "last_event_id"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "internal_data"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "putLastIdDefaultValue(): Error"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateLastId(J)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "last_event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "internal_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/content/ContentValues;I)J
    .locals 6

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "vid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "vid"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "addEvent()"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTableAndWhereClauseFromType(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_3

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v3, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "addEvent(): Couldn\'t add event"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->updateLastId(J)V

    :goto_0
    return-wide v4

    :cond_3
    :goto_1
    sget-object v4, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v5, "addEvent(): Wrong log type"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_4
    :goto_2
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "addEvent(): wrong fields!"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public addFeaturesBlacklist(Landroid/content/ContentValues;)J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "disable_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disable_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "disable_type"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v0, "feature"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "feature"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "features_blacklist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addFeaturesBlacklist(): missing feature field!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public addVersioningBlob(Landroid/content/ContentValues;)I
    .locals 8

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "eventId"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "addVersioningBlob(): versioning id is null!"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v2, "eventId"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    const-string v5, "eventId"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "version"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->updateLastId(J)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_4
    :goto_0
    sget-object v5, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v6, "addVersioningBlob(): error"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    :goto_1
    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "addVersioningBlob(): wrong fields!"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public deleteAllEvents()J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteAllEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public deleteEventChunk(JI)J
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

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

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteEventChunk(): invalid number"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getTableAndWhereClauseFromType(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    aget-object v4, v0, v1

    aget-object v5, v0, v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "deleteEventChunk(): Wrong log type"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public deleteFeatureBlacklist(Ljava/lang/String;)J
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeatureBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "features_blacklist"

    const-string v2, "feature = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public deleteFeaturesBlacklist([Ljava/lang/String;)J
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteFeatureBlacklist(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "features_blacklist"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    return-wide v0
.end method

.method public deleteFromVersion(J)J
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "version"

    const-string v2, "id <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public deleteUpTo(J)J
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUpTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const-string v2, "id <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 11

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getCleanedEventsCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v2, "cleaned_events"

    const-string v1, "id"

    const-string/jumbo v3, "vid"

    const-string v4, "data"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    return-object v1
.end method

.method public getCurrentDatabaseSizeCursor()Landroid/database/Cursor;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentDatabaseSizeInBytes()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "databaseSize"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentDatabaseSizeInBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    :cond_0
    return-object v0
.end method

.method public getCurrentDatabaseSizeInBytes()J
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentDatabaseSizeInBytes()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "analytics.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method public getCurrentVersioningIdInternal()I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getCurrentVersioningId()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v1

    :cond_2
    :goto_2
    nop

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1
.end method

.method public getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 11

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getEventChunk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v2, "events"

    const-string v1, "id"

    const-string/jumbo v3, "vid"

    const-string v4, "data"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    return-object v1
.end method

.method public getEventCount()Landroid/database/Cursor;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "count"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventCountValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public getEventCountValue()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFeaturesBlacklist()Landroid/database/Cursor;
    .locals 10

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "features_blacklist"

    const-string v1, "feature"

    const-string v2, "disable_type"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object v1
.end method

.method public getLastId()Landroid/database/Cursor;
    .locals 10

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "getLastId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "internal_data"

    const-string v1, "last_event_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object v1
.end method

.method public getVersioningBlob()Landroid/database/Cursor;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v1, "version"

    const-string v0, "data"

    const-string v2, "id"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "PRAGMA journal_mode = OFF;"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE features_blacklist ( feature TEXT PRIMARY KEY, disable_type INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE internal_data ( last_event_id INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "oldVersion=%d, newVersion=%d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p2, v2, :cond_0

    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS version"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS features_blacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE version ( id INTEGER PRIMARY KEY, data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE features_blacklist ( feature TEXT PRIMARY KEY, disable_type INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    const-string v0, "CREATE TABLE internal_data ( last_event_id INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->putLastIdDefaultValue(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    const-string v0, "CREATE TABLE cleaned_events ( id INTEGER PRIMARY KEY, vid INTEGER, data BLOB )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
