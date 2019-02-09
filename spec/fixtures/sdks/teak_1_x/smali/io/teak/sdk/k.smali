.class public Lio/teak/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/k$d;,
        Lio/teak/sdk/k$b;,
        Lio/teak/sdk/k$c;,
        Lio/teak/sdk/k$e;,
        Lio/teak/sdk/k$a;,
        Lio/teak/sdk/k$f;
    }
.end annotation


# static fields
.field static d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Lio/teak/sdk/a/d;


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z

.field protected final c:Lio/teak/sdk/k$a;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lio/teak/sdk/b/d;

.field private final h:Ljava/lang/String;

.field private final i:Lio/teak/sdk/k$e;

.field private j:Z

.field private k:Lio/teak/sdk/k$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/teak/sdk/k;->m:Ljava/util/Map;

    .line 115
    new-instance v0, Lio/teak/sdk/k$1;

    invoke-direct {v0}, Lio/teak/sdk/k$1;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/m;->a(Lio/teak/sdk/m$a;)V

    .line 278
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;Z)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/teak/sdk/k$e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/teak/sdk/b/d;",
            "Lio/teak/sdk/k$e;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'endpoint\' must start with \'/\' or things will break, and you will lose an hour of your life debugging."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iput-object p1, p0, Lio/teak/sdk/k;->f:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Lio/teak/sdk/k;->e:Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lio/teak/sdk/k;->a:Ljava/util/Map;

    .line 326
    iput-object p4, p0, Lio/teak/sdk/k;->g:Lio/teak/sdk/b/d;

    .line 327
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/k;->h:Ljava/lang/String;

    .line 328
    iput-object p5, p0, Lio/teak/sdk/k;->i:Lio/teak/sdk/k$e;

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/teak/sdk/k;->b:Z

    .line 331
    if-eqz p6, :cond_2

    .line 332
    invoke-virtual {p4}, Lio/teak/sdk/b/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lio/teak/sdk/k;->a:Ljava/util/Map;

    const-string v1, "api_key"

    invoke-virtual {p4}, Lio/teak/sdk/b/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/k;->a:Ljava/util/Map;

    sget-object v1, Lio/teak/sdk/k;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 340
    :cond_2
    const/4 v2, 0x0

    .line 341
    new-instance v6, Lio/teak/sdk/k$f;

    invoke-direct {v6, p0}, Lio/teak/sdk/k$f;-><init>(Lio/teak/sdk/k;)V

    .line 342
    new-instance v7, Lio/teak/sdk/k$a;

    invoke-direct {v7, p0}, Lio/teak/sdk/k$a;-><init>(Lio/teak/sdk/k;)V

    .line 346
    :try_start_0
    sget-object v0, Lio/teak/sdk/k;->n:Lio/teak/sdk/a/d;

    if-eqz v0, :cond_12

    .line 347
    sget-object v0, Lio/teak/sdk/k;->n:Lio/teak/sdk/a/d;

    iget-object v0, v0, Lio/teak/sdk/a/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lio/teak/sdk/k;->n:Lio/teak/sdk/a/d;

    iget-object v0, v0, Lio/teak/sdk/a/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    :goto_0
    if-eqz v0, :cond_4

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/Map;

    .line 350
    :goto_1
    if-eqz v0, :cond_12

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_12

    .line 352
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 354
    const-string v1, "blackhole"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "blackhole"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    .line 357
    :goto_2
    :try_start_1
    const-string v1, "retry"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "retry"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 359
    const-string v1, "retry"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    :try_start_2
    const-string v2, "jitter"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "jitter"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_6

    const-string v2, "jitter"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 363
    :goto_3
    iput v2, v6, Lio/teak/sdk/k$f;->a:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 368
    :goto_4
    :try_start_3
    const-string v2, "times"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "times"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_a

    .line 369
    const-string v2, "times"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 370
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [F

    .line 371
    const/4 v2, 0x0

    .line 372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 374
    :try_start_4
    instance-of v8, v1, Ljava/lang/Number;

    if-eqz v8, :cond_8

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 375
    :goto_6
    aput v1, v4, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 379
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 380
    goto :goto_5

    .line 347
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 349
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 354
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 362
    :cond_6
    :try_start_5
    const-string v2, "jitter"

    .line 363
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_3

    :cond_7
    iget v2, v6, Lio/teak/sdk/k$f;->a:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 375
    :cond_8
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v1

    goto :goto_6

    .line 377
    :catch_0
    move-exception v1

    const/high16 v1, 0x41200000    # 10.0f

    :try_start_7
    aput v1, v4, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    .line 419
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    .line 420
    :goto_8
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v1}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 424
    :goto_9
    iput-boolean v0, p0, Lio/teak/sdk/k;->j:Z

    .line 425
    iput-object v6, p0, Lio/teak/sdk/k;->k:Lio/teak/sdk/k$f;

    .line 426
    iput-object v7, p0, Lio/teak/sdk/k;->c:Lio/teak/sdk/k$a;

    .line 427
    return-void

    .line 381
    :cond_9
    :try_start_8
    iput-object v4, v6, Lio/teak/sdk/k$f;->b:[F

    .line 386
    :cond_a
    const-string v1, "batch"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "batch"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 388
    const-string v1, "batch"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 391
    :try_start_9
    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_c

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 392
    :goto_a
    iput-wide v4, v7, Lio/teak/sdk/k$a;->a:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 398
    :goto_b
    :try_start_a
    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_e

    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 399
    :goto_c
    iput v1, v7, Lio/teak/sdk/k$a;->b:F
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 404
    :goto_d
    :try_start_b
    const-string v1, "lww"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v1

    if-eqz v1, :cond_b

    .line 405
    const/4 v1, 0x0

    .line 407
    :try_start_c
    const-string v2, "lww"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "lww"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    const-string v2, "lww"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-result v0

    .line 412
    :goto_e
    if-eqz v0, :cond_b

    .line 413
    const-wide v0, 0x7fffffffffffffffL

    :try_start_d
    iput-wide v0, v7, Lio/teak/sdk/k$a;->a:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :cond_b
    move v0, v3

    goto/16 :goto_9

    .line 391
    :cond_c
    :try_start_e
    const-string v1, "count"

    .line 392
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_a

    :cond_d
    iget-wide v4, v7, Lio/teak/sdk/k$a;->a:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_a

    .line 398
    :cond_e
    :try_start_f
    const-string v1, "time"

    .line 399
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_c

    :cond_f
    iget v1, v7, Lio/teak/sdk/k$a;->b:F
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_c

    .line 407
    :cond_10
    :try_start_10
    const-string v2, "lww"

    .line 408
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    move-result v0

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_e

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_e

    .line 419
    :catch_3
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto/16 :goto_8

    :catch_4
    move-exception v1

    goto :goto_d

    :catch_5
    move-exception v1

    goto/16 :goto_b

    :catch_6
    move-exception v2

    goto/16 :goto_4

    :cond_12
    move v0, v2

    goto/16 :goto_9
.end method

.method static synthetic a(Lio/teak/sdk/a/d;)Lio/teak/sdk/a/d;
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lio/teak/sdk/k;->n:Lio/teak/sdk/a/d;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    sput-object p0, Lio/teak/sdk/k;->l:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/teak/sdk/b/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 290
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/teak/sdk/k$e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/teak/sdk/b/d;",
            "Lio/teak/sdk/k$e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 296
    const-string v1, "parsnip.gocarrot.com"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    invoke-static {p0, p3}, Lio/teak/sdk/k$b;->a(Ljava/lang/String;Lio/teak/sdk/b/d;)Lio/teak/sdk/k$b;

    move-result-object v0

    .line 302
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0, p1, p2, p4}, Lio/teak/sdk/k$c;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/k$e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    sget-object v6, Lio/teak/sdk/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lio/teak/sdk/k$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/teak/sdk/k$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 314
    :cond_1
    :goto_1
    return-void

    .line 298
    :cond_2
    const-string v1, "/me/events"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-static {p0, p3}, Lio/teak/sdk/k$d;->a(Ljava/lang/String;Lio/teak/sdk/b/d;)Lio/teak/sdk/k$d;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_3
    sget-object v7, Lio/teak/sdk/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lio/teak/sdk/k;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lio/teak/sdk/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/teak/sdk/b/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 282
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/k$e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/teak/sdk/b/d;",
            "Lio/teak/sdk/k$e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lio/teak/sdk/k;->n:Lio/teak/sdk/a/d;

    invoke-virtual {v0}, Lio/teak/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 286
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lio/teak/sdk/k;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/k;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lio/teak/sdk/k;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lio/teak/sdk/k$2;

    invoke-direct {v0}, Lio/teak/sdk/k$2;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 155
    return-void
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lio/teak/sdk/k;->m:Ljava/util/Map;

    return-object v0
.end method

.method private d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 538
    const-string v1, "request_id"

    iget-object v2, p0, Lio/teak/sdk/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "hostname"

    iget-object v2, p0, Lio/teak/sdk/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "endpoint"

    iget-object v2, p0, Lio/teak/sdk/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "session"

    iget-object v2, p0, Lio/teak/sdk/k;->g:Lio/teak/sdk/b/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "payload"

    iget-object v2, p0, Lio/teak/sdk/k;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 522
    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lio/teak/sdk/k;->k:Lio/teak/sdk/k$f;

    iget v1, v1, Lio/teak/sdk/k$f;->c:I

    iget-object v2, p0, Lio/teak/sdk/k;->k:Lio/teak/sdk/k$f;

    iget-object v2, v2, Lio/teak/sdk/k$f;->b:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 524
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lio/teak/sdk/k;->k:Lio/teak/sdk/k$f;

    iget v2, v2, Lio/teak/sdk/k$f;->a:F

    mul-float/2addr v1, v2

    .line 525
    iget-object v2, p0, Lio/teak/sdk/k;->k:Lio/teak/sdk/k$f;

    iget-object v2, v2, Lio/teak/sdk/k$f;->b:[F

    iget-object v3, p0, Lio/teak/sdk/k;->k:Lio/teak/sdk/k$f;

    iget v3, v3, Lio/teak/sdk/k$f;->c:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 526
    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    .line 528
    :goto_0
    iget-object v1, p0, Lio/teak/sdk/k;->k:Lio/teak/sdk/k$f;

    iget v2, v1, Lio/teak/sdk/k$f;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lio/teak/sdk/k$f;->c:I

    .line 530
    sget-object v1, Lio/teak/sdk/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 534
    :cond_0
    :goto_1
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/k;->i:Lio/teak/sdk/k$e;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lio/teak/sdk/k;->i:Lio/teak/sdk/k$e;

    invoke-interface {v0, p2}, Lio/teak/sdk/k$e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/teak/sdk/k;->b:Z

    .line 474
    iget-boolean v0, p0, Lio/teak/sdk/k;->j:Z

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 476
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lio/teak/sdk/k;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 480
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POST\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/teak/sdk/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/teak/sdk/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/teak/sdk/k;->a:Ljava/util/Map;

    invoke-static {v2}, Lio/teak/sdk/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 482
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 483
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 484
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lio/teak/sdk/k;->a:Ljava/util/Map;

    invoke-static {v1, v0}, Lio/teak/sdk/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 493
    :try_start_1
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "request.send"

    invoke-direct {p0}, Lio/teak/sdk/k;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 494
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 495
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/teak/sdk/k;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/teak/sdk/k;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 496
    new-instance v4, Lio/teak/sdk/d/d;

    invoke-direct {v4}, Lio/teak/sdk/d/d;-><init>()V

    .line 497
    invoke-interface {v4, v1, v0}, Lio/teak/sdk/d/g;->a(Ljava/net/URL;Ljava/lang/String;)Lio/teak/sdk/d/g$a;

    move-result-object v4

    .line 499
    if-nez v4, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 500
    :goto_1
    if-nez v4, :cond_3

    const/4 v0, 0x0

    .line 502
    :goto_2
    invoke-direct {p0}, Lio/teak/sdk/k;->d()Ljava/util/Map;

    move-result-object v5

    .line 503
    const-string v6, "payload"

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v6, "response_time"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v2, v8, v2

    long-to-double v2, v2

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    if-eqz v4, :cond_1

    .line 508
    :try_start_2
    const-string v2, "payload"

    new-instance v3, Lio/teak/sdk/e/c;

    iget-object v4, v4, Lio/teak/sdk/d/g$a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 513
    :cond_1
    :goto_3
    :try_start_3
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "request.reply"

    invoke-virtual {v2, v3, v5}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 515
    invoke-virtual {p0, v1, v0}, Lio/teak/sdk/k;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 487
    :catch_1
    move-exception v0

    .line 488
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 499
    :cond_2
    :try_start_4
    iget v0, v4, Lio/teak/sdk/d/g$a;->a:I

    move v1, v0

    goto :goto_1

    .line 500
    :cond_3
    iget-object v0, v4, Lio/teak/sdk/d/g$a;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 549
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

    invoke-direct {p0}, Lio/teak/sdk/k;->d()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
