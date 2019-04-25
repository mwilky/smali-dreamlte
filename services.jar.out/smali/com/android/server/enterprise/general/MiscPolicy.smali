.class public Lcom/android/server/enterprise/general/MiscPolicy;
.super Lcom/samsung/android/knox/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;,
        Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
    }
.end annotation


# static fields
.field private static final CHROME_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final FONT_NOTSUPPORT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font.droidserifitalic"

.field private static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final SBROWSER_PROJECTION:[Ljava/lang/String;

.field private static final SBROWSER_PROJECTION_ID_INDEX:I = 0x0

.field private static final SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private final MAX_PORT_NUMBER:I

.field private final MIN_PORT_NUMBER:I

.field private mCon:Lcom/android/server/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFontSizes:[F

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

.field private mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://com.sec.android.app.sbrowser.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.chrome.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "favicon"

    const-string/jumbo v4, "editable"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->MIN_PORT_NUMBER:I

    const v0, 0xffff

    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->MAX_PORT_NUMBER:I

    const-string v0, "android.intent.action.USER_ADDED"

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->ACTION_USER_ADDED:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/general/MiscPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 8

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "MiscPolicy"

    const-string v4, "addBookmark() - Could not create context for current user!"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v3, v6

    :goto_1
    return v3

    :cond_3
    return v6
.end method

.method private addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v8, v0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    sget-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v5, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x0

    if-nez v9, :cond_1

    const-string v12, "MiscPolicy"

    const-string v13, "addBookmarkToAndroidBrowser() - No provider found!!!"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v12

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_3

    invoke-interface {v9, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v14, 0x5

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string/jumbo v13, "title"

    invoke-virtual {v8, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "url"

    invoke-virtual {v8, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "created"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "bookmark"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "date"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v13, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v13, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "thumbnail"

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/general/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_4
    const/4 v13, 0x0

    if-lez v12, :cond_5

    const/4 v14, 0x2

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move v13, v14

    :cond_5
    if-nez v12, :cond_6

    const-string/jumbo v0, "visits"

    add-int/lit8 v14, v13, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v14, "visits"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const-string v0, "MiscPolicy"

    const-string v14, "addBookmarkToAndroidBrowser() - Inserting bookmark into database"

    invoke-static {v0, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v14, "MiscPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBookmarkToAndroidBrowser() - uri: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move v4, v1

    goto :goto_3

    :cond_7
    const-string v1, "MiscPolicy"

    const-string v14, "addBookmarkToAndroidBrowser() - uri is null!"

    invoke-static {v1, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v9, :cond_8

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MiscPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Android provider error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "MiscPolicy"

    const-string v12, "Android provider error - unknown uri"

    invoke-static {v1, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_8

    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v4

    :goto_5
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bookmark"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBookmarkToChrome() - uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "MiscPolicy"

    const-string v6, "addBookmarkToChrome() - uri is null!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Chrome provider error - unknown uri"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "editable"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addBookmarkToSBrowser() - uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "MiscPolicy"

    const-string v6, "addBookmarkToSBrowser() - uri is null!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "MiscPolicy"

    const-string v6, "Sbrowser provider error - unknown uri"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private clearAuthConfigFromDb()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GlobalProxyAuthTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method private declared-synchronized clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "globalProxy"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    nop

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "globalProxy"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    new-instance v1, Landroid/net/ProxyInfo;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4, v1}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearAuthConfigFromDb()V

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    const-string v2, "MiscPolicy"

    const-string v3, "clearGlobalProxyEnable.SettingNotFoundException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private convertAuthConfigToContentValues(ILcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "host"

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "port"

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "username"

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "password"

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/ProxyInfo;->setEnterpriseProxy(I)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    :cond_2
    return-object v1
.end method

.method private enforceFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_FIREWALL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    return-object p1
.end method

.method private enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_FIREWALL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_HW_CONTROL"

    const-string v3, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndOldSecurityOrNewInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndWriteSettingsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemProcess()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private floatToIndex(F)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v5, v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v2, v5, v1

    sub-float v5, v2, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    add-int/lit8 v3, v1, -0x1

    return v3

    :cond_0
    move v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v1, v1

    sub-int/2addr v1, v3

    const-string v0, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "floatToIndex(): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private getAuthConfigFromDb()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/AuthConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "host"

    const-string/jumbo v2, "port"

    const-string/jumbo v3, "username"

    const-string/jumbo v4, "password"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "GlobalProxyAuthTable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string/jumbo v9, "host"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "port"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v9, "username"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "password"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v3, v10, v4, v5}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private declared-synchronized getGlobalProxy(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getGlobalProxyFromSettings()Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {v2}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    move-object v0, v2

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    :goto_0
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getAuthConfigFromDb()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    move-object v1, p1

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v2, "www."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private isAdminLockScreenStringSet(I)I
    .locals 7

    :try_start_0
    const-string v0, "adminUid"

    const-string/jumbo v1, "lockscreenstring"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MISC"

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "lockscreenstring"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const-string v2, "adminUid"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private isChinaModel()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isFolderModel(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isGlobalProxySetForAdmin(II)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string/jumbo v2, "globalProxy"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "setGlobalProxy.SettingNotFoundException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRingToneEntryExist(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J
    .locals 12

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p3

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v2, v6

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v6

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRingToneEntryExist : return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private isSupportSettings2()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.settings"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "settings_apk_name"

    const-string/jumbo v5, "none"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecSettings2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MiscPolicy"

    const-string/jumbo v4, "isSupportSettings2()"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    nop

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    long-to-int v5, v3

    new-array v5, v5, [B

    move-object v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_0

    array-length v7, v2

    sub-int/2addr v7, v5

    invoke-virtual {v1, v2, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    move v6, v7

    if-ltz v7, :cond_0

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    array-length v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v7, :cond_1

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The file was not completely read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "The file is too big"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    if-eqz v2, :cond_4

    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readFile returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v3, "MiscPolicy"

    const-string/jumbo v4, "readFile returns : null"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v2

    :goto_5
    nop

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v1, 0x0

    goto :goto_6

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_5
    :goto_6
    throw v3
.end method

.method private removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "url = ? AND title = ?"

    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v8, v11

    const/4 v4, 0x1

    aput-object p3, v8, v4

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    if-nez v0, :cond_1

    const-string v4, "MiscPolicy"

    const-string/jumbo v5, "removeBookmarkFromAndroidBrowser() - No provider found!!!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v5, "MiscPolicy"

    const-string/jumbo v6, "removeBookmarkFromAndroidBrowser() - Empty cursor!!!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_3
    :try_start_2
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    const-string v8, "MiscPolicy"

    const-string/jumbo v9, "removeBookmarkFromAndroidBrowser() - Deleting bookmark"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "bookmark"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v9, "MiscPolicy"

    const-string/jumbo v10, "removeBookmarkFromAndroidBrowser() - Updating database"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v8, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_4
    const-string/jumbo v9, "removeFromBookmarks"

    const-string/jumbo v10, "no database!"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_5
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android provider error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v5, "MiscPolicy"

    const-string v6, "Android provider error - unknown uri"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_5

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v1

    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v4, "url = ? AND title = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v7, 0x1

    aput-object p3, v5, v7

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeBookmarkFromChrome() - rows: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    sget-object v4, Lcom/android/server/enterprise/general/MiscPolicy;->CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v5, "url = ?"

    new-array v8, v7, [Ljava/lang/String;

    aput-object p2, v8, v6

    invoke-virtual {p1, v4, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    :cond_0
    if-lez v3, :cond_1

    move v6, v7

    nop

    :cond_1
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Chrome provider error - unknown uri"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/general/MiscPolicy;->SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v4, "url = ? AND title = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v7, 0x1

    aput-object p3, v5, v7

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeBookmarkFromSBrowser() - rows: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_0

    move v6, v7

    nop

    :cond_0
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Sbrowser provider error - unknown uri"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private removeFromBookmarks(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "MiscPolicy"

    const-string/jumbo v4, "removeFromBookmarks() - Could not create context for current user!"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v3, v6

    :goto_1
    return v3

    :cond_3
    return v6
.end method

.method private retrieveSystemFontSizes()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "retrieveSystemFontSizes(): start to retrieve system font sizes."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "retrieveSystemFontSizes(): failed because Setting Context is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-le v3, v4, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->supportBigFont(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "sec_entryvalues_big_font_size"

    const-string v4, "array"

    const-string v5, "com.android.settings"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "sec_entryvalues_8_step_font_size"

    const-string v4, "array"

    const-string v5, "com.android.settings"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isSupportSettings2()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "tablet_entryvalues_7_step_font_size"

    const-string v4, "array"

    const-string v5, "com.android.settings"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    :cond_4
    if-nez v2, :cond_7

    const-string/jumbo v3, "entryvalues_7_step_font_size"

    const-string v4, "array"

    const-string v5, "com.android.settings"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "entryvalues_7_step_font_size"

    const-string v4, "array"

    const-string v5, "com.android.settings"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "entryvalues_font_size"

    const-string v4, "array"

    const-string v5, "com.android.settings"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    :cond_7
    :goto_0
    if-nez v2, :cond_8

    const-string v3, "MiscPolicy"

    const-string/jumbo v4, "retrieveSystemFontSizes() : failed to get resource ID. "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_9

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "retrieveSystemFontSizes() failed: unexpected exception. "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/net/AuthConfig;

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GlobalProxyAuthTable"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->convertAuthConfigToContentValues(ILcom/samsung/android/knox/net/AuthConfig;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method private declared-synchronized setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxySetForAdmin(II)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->createProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "globalProxy"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v2, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearAuthConfigFromDb()V

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v2, :cond_5

    monitor-exit p0

    return v1

    :cond_5
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4, v0}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches()V

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "globalProxy"

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    nop

    :cond_6
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    :try_start_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setNFCStateChangeAllowedSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNFCStateChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "MiscPolicy"

    const-string/jumbo v4, "setNFCStateChangeAllowedSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private supportBigFont(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "elite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateDatabase(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ringtone entry exist deleting it :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_data"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "title"

    const-string v7, "IT Admin tone"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "mime_type"

    const-string v7, "audio/*"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "artist"

    const-string v7, "artist"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "is_ringtone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "is_notification"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "is_alarm"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "is_music"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v6

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateSystemUIMonitor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setNFCStateChangeAllowedSystemUI(IZ)V

    return-void
.end method

.method private static validateHostName(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xff

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v0

    :goto_0
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    aget-object v5, v1, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_3

    const/16 v6, 0x7a

    if-le v5, v6, :cond_4

    :cond_3
    const/16 v6, 0x41

    if-lt v5, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez v3, :cond_7

    return v0

    :cond_7
    const/4 v4, 0x0

    move v5, v4

    move v4, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    array-length v4, v1

    if-lt v5, v4, :cond_a

    return v0

    :cond_a
    array-length v4, v1

    move v6, v0

    :goto_3
    if-ge v6, v4, :cond_c

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x3f

    if-le v8, v9, :cond_b

    return v0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    const-string v4, "^[A-Za-z0-9-]+$"

    array-length v6, v1

    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_f

    aget-object v8, v1, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    return v0

    :cond_f
    return v2
.end method

.method private validateIp(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v2

    if-ltz v2, :cond_2

    const v3, 0xffff

    if-gt v2, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->validateIp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->validateHostName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public addClipboardData(Landroid/content/ClipData;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public addClipboardTextData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "simple text"

    invoke-static {v5, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v7

    if-nez v2, :cond_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    const-string/jumbo v7, "semclipboard"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v8

    move-object v3, v8

    new-instance v8, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v8}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    if-eqz v3, :cond_1

    invoke-virtual {v5, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getClipType()I

    move-result v9

    invoke-interface {v3, v9, v8}, Landroid/sec/clipboard/IClipboardService;->setClipDataFromOriginal(ILcom/samsung/android/content/clipboard/data/SemClipData;)I

    goto :goto_0

    :cond_1
    const-string v9, "MiscPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addClipboardTextData() : request is not valid. service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", txt :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v4, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "MiscPolicy"

    const-string v5, "addClipboardTextData() failed because error occurs."

    invoke-static {v3, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->addBookmark(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "MISC"

    const-string/jumbo v3, "nfcStateChangeAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has change NFC state change to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    return v0
.end method

.method public changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 19

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android"

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v11, 0x0

    invoke-static {v0, v3, v11, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v12

    if-nez v12, :cond_0

    const-string v0, "MiscPolicy"

    const-string v3, "Could not create context for current user!"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v9

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v9, v4, :cond_1

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v9, v4, :cond_1

    const-string v4, "MiscPolicy"

    const-string v5, "changeLockScreenString():get AdminId failed!! "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v4, p2

    :goto_0
    move/from16 v16, v3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    const-string v4, ""

    goto :goto_0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x100

    if-le v3, v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "MiscPolicy"

    const-string v5, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v8, v4

    if-nez v16, :cond_6

    const-string v3, "MiscPolicy"

    const-string v4, "changeLockScreenString(): apply restriction"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "MISC"

    const-string/jumbo v6, "lockscreenstring"

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v0, "MiscPolicy"

    const-string v3, "changeLockScreenString(): ret is true set value"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v3, "lock_screen_owner_info_enabled"

    invoke-interface {v0, v3, v7, v10}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v3, "lock_screen_owner_info"

    invoke-interface {v0, v3, v8, v10}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "MiscPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has changed lock screen string to "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v8

    move-object v8, v0

    move/from16 v18, v9

    move v9, v10

    :try_start_1
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v8

    move/from16 v18, v9

    :goto_3
    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t write string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v0, "my_profile_enabled"

    const/4 v3, 0x0

    invoke-static {v15, v0, v3, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_5

    :cond_5
    move-object v11, v8

    move/from16 v18, v9

    :goto_5
    move/from16 v0, v17

    goto :goto_6

    :cond_6
    move-object v11, v8

    move/from16 v18, v9

    const-string v3, "MiscPolicy"

    const-string v4, "changeLockScreenString(): revoke restriction"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "MISC"

    const-string/jumbo v6, "lockscreenstring"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v17

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v3, "lock_screen_owner_info"

    invoke-interface {v0, v3, v11, v10}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "MiscPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has cleared the lock screen string."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v10

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t write string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeLockScreenString():ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public declared-synchronized clearAllGlobalProxy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "globalProxy"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    const-string v3, "RESTRICTION"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearClipboardData(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "MiscPolicy"

    const-string v1, "clearClipboardData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "semclipboard"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    invoke-interface {v4, v5}, Landroid/sec/clipboard/IClipboardService;->registClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    goto :goto_0

    :cond_0
    const-string v5, "MiscPolicy"

    const-string v6, "clearClipboardData() : service is not valid. "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v5, "simple text"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "MiscPolicy"

    const-string v5, "clearClipboardData() : failed because error occurs. "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearGlobalProxyEnableEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    return v0
.end method

.method public clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    return v0
.end method

.method public deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOldSecurityOrNewBrowserPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->removeFromBookmarks(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getClipboardData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipboardTextData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndClipboardPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "semclipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/sec/clipboard/IClipboardService;->getClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MiscPolicy"

    const-string/jumbo v5, "getClipboardTextData() failed with error occurs. "

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v2

    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentLockScreenString : currentSetAdminId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const-string/jumbo v6, "lock_screen_owner_info"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, v1}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t get string lock_screen_owner_info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    const-string v1, "SimChangeTime"

    const-string v2, "/data/system/SimCard.dat"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "-1"

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    new-instance v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "PreviousSimCountryIso"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "PreviousSimOperatorName"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "PreviousSimOperator"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "PreviousSimPhoneNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "PreviousSimSerialNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;

    const-string v2, "SimChangeOperation"

    const-string v3, "/data/system/SimCard.dat"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_1

    const-string v2, "-1"

    move-object v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    new-instance v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v2}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "CurrentSimCountryIso"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "CurrentSimOperatorName"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "CurrentSimOperator"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "CurrentSimPhoneNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    const-string v3, "CurrentSimSerialNumber"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    return-object v0
.end method

.method public getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F
    .locals 6

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "font_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v3, v3

    if-lt v2, v3, :cond_0

    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSystemActiveFontSize() : resized font index value. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v3, v3, v2

    iput v3, v0, Landroid/content/res/Configuration;->fontScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "getSystemActiveFontSize(): Unable to read font size"

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    return v1
.end method

.method public getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    return-object v0
.end method

.method public getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGlobalProxyAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string/jumbo v2, "globalProxy"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v1
.end method

.method public isNFCStarted()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Error on isNFCStarted"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isNFCStateChangeAllowed()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MISC"

    const-string/jumbo v3, "nfcStateChangeAllowed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor(I)V

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_owner_info"

    const-string v2, ""

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiscPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    :cond_1
    return-void
.end method

.method public retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceSystemProcess()V

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getAuthConfigFromDb()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/net/AuthConfig;

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v5, p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/samsung/android/knox/net/AuthConfig;->ANY_HOST:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget v8, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    if-ne v5, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public setGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result v1

    return v1
.end method

.method public setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result v0

    return v0
.end method

.method public setRingerBytes(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MiscPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM_SECURITY Permission is not granted - Check for WRITE_SETTINGS permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndWriteSettingsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/general/MiscPolicy;->updateDatabase(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z
    .locals 11

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "MiscPolicy"

    const-string/jumbo v3, "setSystemActiveFontSize() : failed to retrieve font datas."

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "font_size"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v3, :cond_1

    const-string v2, "MiscPolicy"

    const-string/jumbo v5, "setSystemActiveFontSize() : same font size"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "font_size"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/high16 v8, 0x1000000

    if-ge v1, v4, :cond_2

    if-ne v3, v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "large_font"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-ne v1, v4, :cond_3

    if-ge v3, v4, :cond_3

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "large_font"

    invoke-virtual {v9, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    aget v8, v8, v3

    iput v8, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "font_size"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v8, 0x7

    if-lt v3, v8, :cond_4

    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessiblity_font_switch"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    const-string v8, "MiscPolicy"

    const-string/jumbo v9, "setSystemActiveFontSize(): failed to set font size. "

    invoke-static {v8, v9, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :cond_4
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catchall_1
    move-exception v2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndHwPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MiscPolicy"

    const-string v5, "Error on Start/Stop NFC"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
