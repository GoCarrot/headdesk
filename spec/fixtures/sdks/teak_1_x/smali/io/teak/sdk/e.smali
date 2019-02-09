.class public final Lio/teak/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/e$b;,
        Lio/teak/sdk/e$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
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

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private j:Z

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/e;->b:Ljava/util/Map;

    .line 158
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/e;->i:Ljava/util/concurrent/ExecutorService;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/teak/sdk/e;->j:Z

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/e;->k:Ljava/util/ArrayList;

    .line 161
    iput-object p1, p0, Lio/teak/sdk/e;->c:Ljava/lang/String;

    .line 162
    iput p2, p0, Lio/teak/sdk/e;->d:I

    .line 163
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/e;->a:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lio/teak/sdk/e;->b:Ljava/util/Map;

    const-string v1, "run_id"

    iget-object v2, p0, Lio/teak/sdk/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/teak/sdk/e;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 167
    new-instance v0, Lio/teak/sdk/e$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/e$1;-><init>(Lio/teak/sdk/e;)V

    invoke-static {v0}, Lio/teak/sdk/m;->a(Lio/teak/sdk/m$a;)V

    .line 194
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/e;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/e;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lio/teak/sdk/e$b;)V
    .locals 6
    .param p1    # Lio/teak/sdk/e$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lio/teak/sdk/e;->b:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 235
    const-string v0, "event_id"

    iget-object v2, p0, Lio/teak/sdk/e;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "log_level"

    iget-object v2, p1, Lio/teak/sdk/e$b;->a:Lio/teak/sdk/e$a;

    iget-object v2, v2, Lio/teak/sdk/e$a;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "event_type"

    iget-object v2, p1, Lio/teak/sdk/e$b;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p1, Lio/teak/sdk/e$b;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "event_data"

    iget-object v2, p1, Lio/teak/sdk/e$b;->c:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    iget-boolean v0, p0, Lio/teak/sdk/e;->g:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lio/teak/sdk/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/e$2;

    invoke-direct {v2, p0, p1, v1}, Lio/teak/sdk/e$2;-><init>(Lio/teak/sdk/e;Lio/teak/sdk/e$b;Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 293
    :cond_1
    iget-boolean v0, p0, Lio/teak/sdk/e;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/teak/sdk/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lio/teak/sdk/e$b;->a:Lio/teak/sdk/e$a;

    iget v2, v2, Lio/teak/sdk/e$a;->e:I

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "{}"

    .line 296
    :try_start_0
    iget v2, p0, Lio/teak/sdk/e;->d:I

    if-lez v2, :cond_3

    .line 297
    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    iget v1, p0, Lio/teak/sdk/e;->d:I

    invoke-virtual {v2, v1}, Lio/teak/sdk/e/c;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    iget-object v1, p1, Lio/teak/sdk/e$b;->a:Lio/teak/sdk/e$a;

    iget v1, v1, Lio/teak/sdk/e$a;->e:I

    iget-object v2, p0, Lio/teak/sdk/e;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_2
    return-void

    .line 299
    :cond_3
    :try_start_1
    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/e;Lio/teak/sdk/e$b;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$b;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/util/Map;Z)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 138
    if-eqz p3, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    iget-object v0, v0, Lio/teak/sdk/o;->b:Lio/teak/sdk/j;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    iget-object v0, v0, Lio/teak/sdk/o;->b:Lio/teak/sdk/j;

    invoke-virtual {v0, p1, p2}, Lio/teak/sdk/j;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 142
    :cond_0
    sget-object v0, Lio/teak/sdk/e$a;->c:Lio/teak/sdk/e$a;

    const-string v1, "exception"

    invoke-static {p1}, Lio/teak/sdk/j;->a(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/e;Z)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/teak/sdk/e;->j:Z

    return v0
.end method

.method static synthetic b(Lio/teak/sdk/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/e;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/e;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lio/teak/sdk/e;->h:Z

    return v0
.end method


# virtual methods
.method protected final a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lio/teak/sdk/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/teak/sdk/e$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lio/teak/sdk/e$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/teak/sdk/e$b;-><init>(Lio/teak/sdk/e;Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    iget-object v1, p0, Lio/teak/sdk/e;->k:Ljava/util/ArrayList;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-boolean v2, p0, Lio/teak/sdk/e;->j:Z

    if-eqz v2, :cond_0

    .line 224
    invoke-direct {p0, v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$b;)V

    .line 228
    :goto_0
    monitor-exit v1

    return-void

    .line 226
    :cond_0
    iget-object v2, p0, Lio/teak/sdk/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lio/teak/sdk/e$a;->c:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v1, p1, v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    const-string v0, "message"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lio/teak/sdk/e$a;->c:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v0, p1, p3}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lio/teak/sdk/e$a;->c:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v0, p1, p2}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;Ljava/util/Map;Z)V

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;Ljava/util/Map;Z)V

    .line 134
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;Ljava/util/Map;Z)V

    .line 126
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lio/teak/sdk/e;->h:Z

    .line 198
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lio/teak/sdk/e;->f:Z

    .line 202
    iput-boolean p2, p0, Lio/teak/sdk/e;->g:Z

    .line 203
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v1, p1, v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "message"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v0, p1, p3}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v0, p1, p2}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lio/teak/sdk/e$a;->b:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v1, p1, v0}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "message"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lio/teak/sdk/e$a;->b:Lio/teak/sdk/e$a;

    invoke-virtual {p0, v0, p1, p3}, Lio/teak/sdk/e;->a(Lio/teak/sdk/e$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    return-void
.end method
