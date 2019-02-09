.class final Lio/teak/sdk/f/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Date;

.field private synthetic c:Lio/teak/sdk/f/a;


# direct methods
.method constructor <init>(Lio/teak/sdk/f/a;Ljava/lang/String;Lio/teak/sdk/f/a$b;Ljava/util/HashMap;)V
    .locals 5
    .param p3    # Lio/teak/sdk/f/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/teak/sdk/f/a$b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lio/teak/sdk/f/a$c;->c:Lio/teak/sdk/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    .line 325
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/f/a$c;->b:Ljava/util/Date;

    .line 329
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 330
    :cond_0
    const-string p2, "undefined"

    .line 333
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    const-string v1, "event_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    const-string v1, "message"

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    const-string v1, "timestamp"

    invoke-static {}, Lio/teak/sdk/f/a;->b()Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lio/teak/sdk/f/a$c;->b:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    const-string v1, "level"

    invoke-virtual {p3}, Lio/teak/sdk/f/a$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    const-string v2, "culprit"

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 359
    return-void

    .line 353
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    const-string v1, "culprit"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 372
    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lio/teak/sdk/f/a$c;->c:Lio/teak/sdk/f/a;

    invoke-static {v1}, Lio/teak/sdk/f/a;->a(Lio/teak/sdk/f/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 374
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    const-string v1, "jobType"

    const-string v2, "Teak.Raven"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "appId"

    iget-object v2, p0, Lio/teak/sdk/f/a$c;->c:Lio/teak/sdk/f/a;

    invoke-static {v2}, Lio/teak/sdk/f/a;->b(Lio/teak/sdk/f/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v1, "timestamp"

    iget-object v2, p0, Lio/teak/sdk/f/a$c;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 378
    const-string v1, "payload"

    new-instance v2, Lio/teak/sdk/e/c;

    iget-object v3, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "endpoint"

    iget-object v2, p0, Lio/teak/sdk/f/a$c;->c:Lio/teak/sdk/f/a;

    invoke-static {v2}, Lio/teak/sdk/f/a;->c(Lio/teak/sdk/f/a;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "SENTRY_KEY"

    iget-object v2, p0, Lio/teak/sdk/f/a$c;->c:Lio/teak/sdk/f/a;

    invoke-static {v2}, Lio/teak/sdk/f/a;->d(Lio/teak/sdk/f/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "SENTRY_SECRET"

    iget-object v2, p0, Lio/teak/sdk/f/a$c;->c:Lio/teak/sdk/f/a;

    invoke-static {v2}, Lio/teak/sdk/f/a;->e(Lio/teak/sdk/f/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    const-string v1, "Teak.Raven"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 363
    :try_start_0
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v0, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    const-string v2, "event_id"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lio/teak/sdk/f/a$c;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/TeakInstance;->jobBuilder(Ljava/lang/String;Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/Job$Builder;->build()Lcom/firebase/jobdispatcher/Job;

    move-result-object v0

    .line 365
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v1, v1, Lio/teak/sdk/TeakInstance;->dispatcher:Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

    invoke-virtual {v1, v0}, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->mustSchedule(Lcom/firebase/jobdispatcher/Job;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 401
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lio/teak/sdk/e/c;

    .line 1392
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1393
    const-string v6, "payload"

    iget-object v7, p0, Lio/teak/sdk/f/a$c;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    const-string v6, "timestamp"

    iget-object v7, p0, Lio/teak/sdk/f/a$c;->b:Ljava/util/Date;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
