.class final Lio/teak/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic a:Lio/teak/sdk/h;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lio/teak/sdk/TeakNotification;

.field private synthetic d:Lio/teak/sdk/i;

.field private synthetic e:I

.field private synthetic f:I

.field private synthetic g:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lio/teak/sdk/h;Landroid/content/Context;Lio/teak/sdk/TeakNotification;Lio/teak/sdk/i;IILandroid/util/DisplayMetrics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 319
    iput-object p1, p0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    iput-object p2, p0, Lio/teak/sdk/j;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/teak/sdk/j;->c:Lio/teak/sdk/TeakNotification;

    iput-object p4, p0, Lio/teak/sdk/j;->d:Lio/teak/sdk/i;

    iput p5, p0, Lio/teak/sdk/j;->e:I

    iput p6, p0, Lio/teak/sdk/j;->f:I

    iput-object p7, p0, Lio/teak/sdk/j;->g:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 490
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 491
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "assets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_4

    .line 494
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_0
    iget-object v2, p0, Lio/teak/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 496
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 518
    :goto_0
    if-eqz v0, :cond_1

    .line 520
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 525
    :cond_1
    :goto_1
    return-object v1

    .line 500
    :cond_2
    :try_start_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 501
    const-string v2, "device_memory_class"

    iget v3, p0, Lio/teak/sdk/j;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 502
    const-string v2, "scaled_density"

    iget-object v3, p0, Lio/teak/sdk/j;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 504
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 506
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 507
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 508
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 509
    :try_start_4
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    .line 520
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 522
    :catch_1
    move-exception v0

    goto :goto_1

    .line 518
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_1

    .line 520
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 522
    :catch_3
    move-exception v0

    goto :goto_1

    .line 518
    :catch_4
    move-exception v0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_1

    .line 520
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 522
    :catch_5
    move-exception v0

    goto :goto_1

    .line 518
    :catch_6
    move-exception v0

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_1

    .line 520
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_1

    .line 522
    :catch_7
    move-exception v0

    goto :goto_1

    .line 518
    :catch_8
    move-exception v0

    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_1

    .line 520
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_1

    .line 522
    :catch_9
    move-exception v0

    goto :goto_1

    .line 518
    :catch_a
    move-exception v0

    move-object v0, v1

    :goto_7
    if-eqz v0, :cond_1

    .line 520
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_1

    .line 522
    :catch_b
    move-exception v0

    goto :goto_1

    .line 518
    :catchall_0
    move-exception v0

    :goto_8
    if-eqz v1, :cond_3

    .line 520
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 524
    :cond_3
    :goto_9
    throw v0

    .line 522
    :catch_c
    move-exception v0

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto :goto_9

    .line 518
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_8

    :catch_e
    move-exception v2

    goto :goto_7

    :catch_f
    move-exception v2

    goto :goto_6

    :catch_10
    move-exception v2

    goto :goto_5

    :catch_11
    move-exception v2

    goto :goto_4

    :catch_12
    move-exception v2

    goto :goto_3

    :catch_13
    move-exception v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/j;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 319
    .line 5534
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/teak/sdk/j;->a(Ljava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 319
    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Landroid/widget/RemoteViews;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 323
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 324
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    .line 325
    sget-object v6, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v7, "notification_builder.gc"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "pre_gc"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%dk"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/16 v14, 0x400

    div-long v14, v2, v14

    .line 326
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "post_gc"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%dk"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/16 v14, 0x400

    div-long v14, v4, v14

    .line 327
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "delta_gc"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%dk"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sub-long v2, v4, v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 328
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    .line 325
    invoke-static {v8}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lio/teak/sdk/h;->b(Ljava/lang/String;)I

    move-result v3

    .line 331
    new-instance v6, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->b:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 335
    if-nez v2, :cond_0

    .line 336
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to get LayoutInflater service."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_0
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lio/teak/sdk/j$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2, v3}, Lio/teak/sdk/j$1;-><init>(Lio/teak/sdk/j;Landroid/view/LayoutInflater;I)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 346
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/j;->c:Lio/teak/sdk/TeakNotification;

    iget-object v3, v3, Lio/teak/sdk/TeakNotification;->display:Lio/teak/sdk/e/c;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v7

    .line 351
    invoke-virtual {v7}, Lio/teak/sdk/e/c;->a()Ljava/util/Iterator;

    move-result-object v8

    .line 354
    const/4 v3, 0x3

    new-array v9, v3, [Z

    .line 356
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 357
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    invoke-virtual {v4, v3}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    .line 367
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 370
    const-class v5, Landroid/widget/Button;

    .line 1530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 370
    if-eqz v5, :cond_3

    .line 375
    const/4 v4, 0x6

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 376
    const/4 v5, 0x1

    aput-boolean v5, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 380
    :goto_1
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v3

    .line 381
    const-string v4, "text"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 382
    const-string v4, "deepLink"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "deepLink"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/teak/sdk/j;->d:Lio/teak/sdk/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/teak/sdk/j;->b:Landroid/content/Context;

    .line 384
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ".intent.TEAK_NOTIFICATION_OPENED"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-virtual {v4, v5, v3}, Lio/teak/sdk/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 382
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 385
    :cond_3
    const-class v5, Landroid/widget/TextView;

    .line 2530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 385
    if-eqz v5, :cond_4

    .line 386
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-static {v3}, Lio/teak/sdk/a;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 389
    :cond_4
    const-class v5, Landroid/widget/ImageButton;

    .line 3530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 389
    if-nez v5, :cond_1

    .line 391
    const-class v5, Landroid/widget/ImageView;

    .line 4530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 391
    if-eqz v5, :cond_9

    .line 392
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    const-string v5, "BUILTIN_APP_ICON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 394
    move-object/from16 v0, p0

    iget v3, v0, Lio/teak/sdk/j;->e:I

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 395
    :cond_5
    const-string v5, "NONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 396
    const/16 v3, 0x8

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 398
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lio/teak/sdk/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 399
    if-nez v5, :cond_8

    .line 400
    const-string v5, "left_image"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 401
    const/16 v3, 0x8

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 403
    :cond_7
    new-instance v2, Lio/teak/sdk/k;

    invoke-direct {v2, v4}, Lio/teak/sdk/k;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_8
    invoke-virtual {v6, v10, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 409
    :cond_9
    const-class v5, Landroid/widget/ViewFlipper;

    .line 5530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    .line 409
    if-eqz v4, :cond_1

    .line 410
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v11

    .line 411
    const-string v3, "sprite_sheet"

    invoke-virtual {v11, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lio/teak/sdk/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 412
    if-nez v12, :cond_a

    .line 413
    new-instance v2, Lio/teak/sdk/k;

    const-string v3, "sprite_sheet"

    invoke-virtual {v11, v3}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/teak/sdk/k;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_a
    const-string v3, "width"

    invoke-virtual {v11, v3}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)I

    move-result v13

    .line 416
    const-string v3, "height"

    invoke-virtual {v11, v3}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)I

    move-result v14

    .line 417
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int v15, v3, v13

    .line 418
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int v16, v3, v14

    .line 419
    const-string v3, "display_ms"

    const/16 v4, 0x1f4

    invoke-virtual {v11, v3, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;I)I

    move-result v17

    .line 421
    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v15, :cond_e

    .line 422
    const/4 v3, 0x0

    move v4, v3

    :goto_4
    move/from16 v0, v16

    if-ge v4, v0, :cond_d

    .line 423
    mul-int v3, v5, v13

    .line 424
    mul-int v18, v4, v14

    .line 425
    move/from16 v0, v18

    invoke-static {v12, v3, v0, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 427
    if-nez v18, :cond_b

    .line 428
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Frame ["

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sprite_sheet"

    invoke-virtual {v11, v4}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_b
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    if-eqz p2, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    const-string v21, "teak_big_frame"

    .line 432
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lio/teak/sdk/h;->b(Ljava/lang/String;)I

    move-result v3

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    const-string v20, "notification_background"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v3

    .line 434
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 435
    move-object/from16 v0, v19

    invoke-virtual {v6, v10, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 422
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4

    .line 432
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    const-string v21, "teak_frame"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lio/teak/sdk/h;->b(Ljava/lang/String;)I

    move-result v3

    goto :goto_5

    .line 421
    :cond_d
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_3

    .line 440
    :cond_e
    const-string v3, "setFlipInterval"

    move/from16 v0, v17

    invoke-virtual {v6, v10, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/j;->c:Lio/teak/sdk/TeakNotification;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lio/teak/sdk/TeakNotification;->isAnimated:Z

    goto/16 :goto_0

    .line 449
    :cond_f
    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-nez v2, :cond_10

    const/4 v2, 0x1

    aget-boolean v2, v9, v2

    if-nez v2, :cond_10

    const/4 v2, 0x2

    aget-boolean v2, v9, v2

    if-eqz v2, :cond_15

    .line 452
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    const-string v3, "actionButtonLayout"

    invoke-virtual {v2, v3}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v2

    .line 453
    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 456
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v2, 0x3

    if-ge v3, v2, :cond_12

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "button"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v4

    .line 458
    aget-boolean v2, v9, v3

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 456
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 458
    :cond_11
    const/16 v2, 0x8

    goto :goto_7

    .line 462
    :cond_12
    const/4 v2, 0x1

    aget-boolean v2, v9, v2

    if-nez v2, :cond_13

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    const-string v3, "divider_button1_button2"

    invoke-virtual {v2, v3}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v2

    .line 464
    const/16 v3, 0x8

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 467
    :cond_13
    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-nez v2, :cond_14

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    const-string v3, "divider_button0_button1"

    invoke-virtual {v2, v3}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v2

    .line 469
    const/16 v3, 0x8

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 482
    :cond_14
    :goto_8
    return-object v6

    .line 476
    :cond_15
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/j;->a:Lio/teak/sdk/h;

    const-string v3, "actionButtonLayout"

    invoke-virtual {v2, v3}, Lio/teak/sdk/h;->a(Ljava/lang/String;)I

    move-result v2

    .line 477
    const/16 v3, 0x8

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v2

    goto :goto_8

    .line 472
    :catch_1
    move-exception v2

    goto :goto_8

    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 363
    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method

.method static synthetic b(Lio/teak/sdk/j;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lio/teak/sdk/j;->b(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/teak/sdk/j;->a(Ljava/lang/String;Z)Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
