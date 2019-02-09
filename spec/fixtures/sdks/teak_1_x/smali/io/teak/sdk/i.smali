.class final Lio/teak/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic a:Lio/teak/sdk/g;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lio/teak/sdk/TeakNotification;

.field private synthetic d:Lio/teak/sdk/h;

.field private synthetic e:I

.field private synthetic f:I

.field private synthetic g:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lio/teak/sdk/g;Landroid/content/Context;Lio/teak/sdk/TeakNotification;Lio/teak/sdk/h;IILandroid/util/DisplayMetrics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    iput-object p2, p0, Lio/teak/sdk/i;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/teak/sdk/i;->c:Lio/teak/sdk/TeakNotification;

    iput-object p4, p0, Lio/teak/sdk/i;->d:Lio/teak/sdk/h;

    iput p5, p0, Lio/teak/sdk/i;->e:I

    iput p6, p0, Lio/teak/sdk/i;->f:I

    iput-object p7, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 488
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 492
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "assets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 494
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_0
    iget-object v2, p0, Lio/teak/sdk/i;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 496
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 521
    :goto_0
    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 525
    :cond_1
    :goto_1
    return-object v0

    .line 499
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 500
    const-string v2, "device_memory_class"

    iget v3, p0, Lio/teak/sdk/i;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 501
    const-string v2, "xdpi"

    iget-object v3, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 502
    const-string v2, "ydpi"

    iget-object v3, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 503
    const-string v2, "width"

    iget-object v3, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 504
    const-string v2, "height"

    iget-object v3, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 505
    const-string v2, "density"

    iget-object v3, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 506
    const-string v2, "density_dpi"

    iget-object v3, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 507
    const-string v2, "scaled_density"

    iget-object v3, p0, Lio/teak/sdk/i;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 509
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 512
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 513
    :try_start_3
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto/16 :goto_0

    .line 521
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    .line 521
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    .line 521
    :catch_2
    move-exception v1

    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    .line 521
    :catch_3
    move-exception v1

    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    .line 521
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_6
    if-eqz v1, :cond_3

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0

    .line 521
    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v2

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_3

    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method static synthetic a(Lio/teak/sdk/i;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    .line 5534
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/teak/sdk/i;->a(Ljava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 324
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
    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lio/teak/sdk/g;->b(Ljava/lang/String;)I

    move-result v3

    .line 327
    new-instance v6, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->b:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 331
    if-nez v2, :cond_0

    .line 332
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to get LayoutInflater service."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_0
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lio/teak/sdk/i$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2, v3}, Lio/teak/sdk/i$1;-><init>(Lio/teak/sdk/i;Landroid/view/LayoutInflater;I)V

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 342
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/i;->c:Lio/teak/sdk/TeakNotification;

    iget-object v3, v3, Lio/teak/sdk/TeakNotification;->d:Lio/teak/sdk/e/c;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v7

    .line 347
    invoke-virtual {v7}, Lio/teak/sdk/e/c;->a()Ljava/util/Iterator;

    move-result-object v8

    .line 350
    const/4 v3, 0x3

    new-array v9, v3, [Z

    .line 352
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 353
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    invoke-virtual {v4, v3}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v10

    .line 363
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 366
    const-class v5, Landroid/widget/Button;

    .line 1530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 366
    if-eqz v5, :cond_3

    .line 371
    const/4 v4, 0x6

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 372
    const/4 v5, 0x1

    aput-boolean v5, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 376
    :goto_1
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v3

    .line 377
    const-string v4, "text"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 378
    const-string v4, "deepLink"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "deepLink"

    invoke-virtual {v3, v4}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/teak/sdk/i;->d:Lio/teak/sdk/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/teak/sdk/i;->b:Landroid/content/Context;

    .line 380
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ".intent.TEAK_NOTIFICATION_OPENED"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-virtual {v4, v5, v3}, Lio/teak/sdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 378
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 381
    :cond_3
    const-class v5, Landroid/widget/TextView;

    .line 2530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 381
    if-eqz v5, :cond_4

    .line 382
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-static {v3}, Lio/teak/sdk/a;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 385
    :cond_4
    const-class v5, Landroid/widget/ImageButton;

    .line 3530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 385
    if-nez v5, :cond_1

    .line 387
    const-class v5, Landroid/widget/ImageView;

    .line 4530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 387
    if-eqz v5, :cond_9

    .line 388
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    const-string v5, "BUILTIN_APP_ICON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget v3, v0, Lio/teak/sdk/i;->e:I

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 391
    :cond_5
    const-string v5, "NONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 392
    const/16 v3, 0x8

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 394
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lio/teak/sdk/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 395
    if-nez v5, :cond_8

    .line 396
    const-string v5, "left_image"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 397
    const/16 v3, 0x8

    invoke-virtual {v6, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 399
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Bitmap is null ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_8
    invoke-virtual {v6, v10, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 405
    :cond_9
    const-class v5, Landroid/widget/ViewFlipper;

    .line 5530
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    .line 405
    if-eqz v4, :cond_1

    .line 406
    invoke-virtual {v7, v3}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v11

    .line 408
    :try_start_2
    const-string v3, "sprite_sheet"

    invoke-virtual {v11, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lio/teak/sdk/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 409
    if-nez v12, :cond_a

    .line 410
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bitmap is null ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "sprite_sheet"

    invoke-virtual {v11, v5}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 412
    :cond_a
    const-string v3, "width"

    invoke-virtual {v11, v3}, Lio/teak/sdk/e/c;->b(Ljava/lang/String;)I

    move-result v13

    .line 413
    const-string v3, "height"

    invoke-virtual {v11, v3}, Lio/teak/sdk/e/c;->b(Ljava/lang/String;)I

    move-result v14

    .line 414
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int v15, v3, v13

    .line 415
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int v16, v3, v14

    .line 416
    const-string v3, "display_ms"

    const/16 v4, 0x1f4

    invoke-virtual {v11, v3, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;I)I

    move-result v17

    .line 418
    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v15, :cond_e

    .line 419
    const/4 v3, 0x0

    move v4, v3

    :goto_4
    move/from16 v0, v16

    if-ge v4, v0, :cond_d

    .line 420
    mul-int v3, v5, v13

    .line 421
    mul-int v18, v4, v14

    .line 422
    move/from16 v0, v18

    invoke-static {v12, v3, v0, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 424
    if-nez v18, :cond_b

    .line 425
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Frame ["

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is null ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sprite_sheet"

    invoke-virtual {v11, v5}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 443
    :catch_1
    move-exception v3

    .line 444
    sget-object v4, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v4, v3}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 428
    :cond_b
    :try_start_3
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/i;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    if-eqz p2, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    const-string v21, "teak_big_frame"

    .line 429
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lio/teak/sdk/g;->b(Ljava/lang/String;)I

    move-result v3

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    const-string v20, "notification_background"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v3

    .line 431
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 432
    move-object/from16 v0, v19

    invoke-virtual {v6, v10, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 419
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_4

    .line 429
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    const-string v21, "teak_frame"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lio/teak/sdk/g;->b(Ljava/lang/String;)I

    move-result v3

    goto :goto_5

    .line 418
    :cond_d
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_3

    .line 437
    :cond_e
    const-string v3, "setFlipInterval"

    move/from16 v0, v17

    invoke-virtual {v6, v10, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/teak/sdk/i;->c:Lio/teak/sdk/TeakNotification;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lio/teak/sdk/TeakNotification;->isAnimated:Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 451
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

    .line 454
    :cond_10
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    const-string v3, "actionButtonLayout"

    invoke-virtual {v2, v3}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v2

    .line 455
    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 458
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v2, 0x3

    if-ge v3, v2, :cond_12

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "button"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v4

    .line 460
    aget-boolean v2, v9, v3

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v6, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 458
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 460
    :cond_11
    const/16 v2, 0x8

    goto :goto_7

    .line 464
    :cond_12
    const/4 v2, 0x1

    aget-boolean v2, v9, v2

    if-nez v2, :cond_13

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    const-string v3, "divider_button1_button2"

    invoke-virtual {v2, v3}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v2

    .line 466
    const/16 v3, 0x8

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 469
    :cond_13
    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-nez v2, :cond_14

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    const-string v3, "divider_button0_button1"

    invoke-virtual {v2, v3}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v2

    .line 471
    const/16 v3, 0x8

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 484
    :cond_14
    :goto_8
    return-object v6

    .line 478
    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/teak/sdk/i;->a:Lio/teak/sdk/g;

    const-string v3, "actionButtonLayout"

    invoke-virtual {v2, v3}, Lio/teak/sdk/g;->a(Ljava/lang/String;)I

    move-result v2

    .line 479
    const/16 v3, 0x8

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v2

    goto :goto_8

    .line 474
    :catch_3
    move-exception v2

    goto :goto_8

    :catch_4
    move-exception v4

    goto/16 :goto_1

    .line 359
    :catch_5
    move-exception v3

    goto/16 :goto_0
.end method

.method static synthetic b(Lio/teak/sdk/i;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    .line 5538
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/teak/sdk/i;->a(Ljava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 324
    return-object v0
.end method
