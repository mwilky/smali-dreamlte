.class Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v7, "MiscPolicy"

    const-string v8, "changeFont():Installed font list is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 v7, 0x0

    move v8, v7

    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_2

    aget-object v9, v6, v8

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v0, v8

    const-string v9, "MiscPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "index"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v0

    :goto_1
    const-string v0, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v7, "sans.loc"

    const-string v10, "default#default"

    invoke-virtual {v4, v0, v7, v10}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v6, v8

    invoke-virtual {v1, v0, v8}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    const-string v0, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default font is selected..."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_3
    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v0, "MiscPolicy"

    const-string v7, "change font failed"

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4
    invoke-virtual {v10}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    const-string v0, "com.monotype.android.font."

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    invoke-virtual {v10}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v12

    const-string v0, ".xml"

    const-string v13, ""

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, " "

    const-string v14, "-"

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0, v13}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    if-nez v14, :cond_6

    const-string v0, "MiscPolicy"

    const-string v9, "create fontDir object is null "

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_6
    const/4 v0, 0x0

    if-eqz v10, :cond_8

    move v15, v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/16 v16, 0x0

    :goto_2
    move/from16 v17, v16

    iget-object v9, v10, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v2, v17

    if-ge v2, v9, :cond_7

    iget-object v9, v10, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/general/TypefaceFile;

    :try_start_0
    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    move-object/from16 v18, v16

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v20, v5

    :try_start_1
    const-string/jumbo v5, "fonts/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object/from16 v21, v5

    invoke-virtual {v9}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v14, v0, v5}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    add-int/lit8 v16, v2, 0x1

    move-object v0, v9

    move-object/from16 v5, v20

    move-object/from16 v2, p1

    const/4 v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v20, v5

    :goto_3
    const-string v5, "MiscPolicy"

    move/from16 v22, v2

    const-string v2, "changeFont():Exception"

    invoke-static {v5, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v6

    const-string v6, "Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_7
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :cond_8
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move v15, v8

    :goto_4
    iget-object v2, v1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "sans.loc"

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    move v5, v15

    invoke-virtual {v1, v2, v5}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    const-string v2, "MiscPolicy"

    const-string v6, "change font:Done"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private getFontString()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getFontsVector()Ljava/util/Vector;
    .locals 14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    new-instance v0, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    nop

    const/16 v8, 0x80

    :try_start_0
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v9, v11

    const-string v11, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v11, "com.monotype.android.font."

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    move-object v3, v13

    iget-object v13, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v13, v3, v9}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v8, v4, v1, v2, v0}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v8

    goto :goto_3

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v1

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method


# virtual methods
.method public getActiveFontPosition()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "prefs"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v4

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v3, "SavedClickedItem"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    :cond_2
    return v2

    :cond_3
    return v2

    :goto_2
    nop

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    nop

    :cond_4
    :goto_3
    throw v2
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 4

    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemActiveFont():getting active system font:"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v0

    const-string v1, "MiscPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getActiveFontPosition():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v2, v1, v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 2

    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_0

    const-string v2, "MiscPolicy"

    const-string v3, "Setting Context is Null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v2, "prefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "SelectDialogIsActive"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SavedClickedItem"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "flip_font_style"

    invoke-static {v6, v7, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_preferences"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "MONOTYPE"

    invoke-interface {v7, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setSystemActiveFont():Start"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "MiscPolicy"

    const-string/jumbo v2, "setSystemActiveFont():Invalid input"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    const/4 v7, 0x0

    const/16 v8, 0x2710

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iput v9, v5, Landroid/content/res/Configuration;->FlipFont:I

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/general/MiscPolicy;->access$600(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v6, "activity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "MiscPolicy"

    const-string/jumbo v6, "setSystemActiveFont():Exception"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method
