.class public final Lio/teak/sdk/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public constructor <init>(Lio/teak/sdk/e/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    const/16 v2, 0x5d

    .line 106
    invoke-direct {p0}, Lio/teak/sdk/e/a;-><init>()V

    .line 107
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 108
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 111
    :cond_0
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    .line 112
    if-nez v0, :cond_1

    .line 114
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 116
    :cond_1
    if-eq v0, v2, :cond_4

    .line 117
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->a()V

    .line 119
    :goto_0
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 120
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->a()V

    .line 121
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    sget-object v1, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_1
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 144
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 123
    :cond_2
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->a()V

    .line 124
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/teak/sdk/e/e;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :sswitch_0
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 131
    :sswitch_1
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    .line 132
    if-nez v0, :cond_3

    .line 134
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 136
    :cond_3
    if-ne v0, v2, :cond_5

    .line 148
    :cond_4
    :sswitch_2
    return-void

    .line 139
    :cond_5
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->a()V

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2c -> :sswitch_1
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Lio/teak/sdk/e/a;-><init>()V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 191
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 192
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 193
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/teak/sdk/e/a;->a(Ljava/lang/Object;)Lio/teak/sdk/e/a;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Lio/teak/sdk/e/b;

    const-string v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lio/teak/sdk/e/e;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/teak/sdk/e/a;-><init>(Lio/teak/sdk/e/e;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    if-nez p1, :cond_1

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    .line 179
    :cond_0
    return-void

    .line 174
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 1377
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1378
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    .line 1379
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, v3}, Lio/teak/sdk/e/a;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;)Lio/teak/sdk/e/a;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    return-object p0
.end method

.method public final a(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1428
    .line 2506
    :try_start_0
    iget-object v1, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1430
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1432
    if-ne v3, v2, :cond_1

    .line 1434
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1463
    :cond_0
    :goto_0
    const/16 v0, 0x5d

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1464
    return-object p1

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    new-instance v1, Lio/teak/sdk/e/b;

    const-string v2, "Unable to write JSONArray value at index: 0"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1465
    :catch_1
    move-exception v0

    .line 1466
    new-instance v1, Lio/teak/sdk/e/b;

    invoke-direct {v1, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1439
    :cond_1
    if-eqz v3, :cond_0

    .line 1440
    add-int v4, p3, p2

    move v1, v0

    .line 1442
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1443
    if-eqz v0, :cond_2

    .line 1444
    const/16 v0, 0x2c

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1446
    :cond_2
    if-lez p2, :cond_3

    .line 1447
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1449
    :cond_3
    invoke-static {p1, v4}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1451
    :try_start_4
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, v4}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1442
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 1453
    :catch_2
    move-exception v0

    .line 1454
    :try_start_5
    new-instance v2, Lio/teak/sdk/e/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to write JSONArray value at index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1458
    :cond_4
    if-lez p2, :cond_5

    .line 1459
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1461
    :cond_5
    invoke-static {p1, p3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 517
    if-ltz p1, :cond_0

    .line 1506
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 517
    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1480
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1481
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1482
    if-eqz v0, :cond_0

    sget-object v3, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1483
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1484
    :cond_1
    instance-of v3, v0, Lio/teak/sdk/e/a;

    if-eqz v3, :cond_2

    .line 1485
    check-cast v0, Lio/teak/sdk/e/a;

    invoke-virtual {v0}, Lio/teak/sdk/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1486
    :cond_2
    instance-of v3, v0, Lio/teak/sdk/e/c;

    if-eqz v3, :cond_3

    .line 1487
    check-cast v0, Lio/teak/sdk/e/c;

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1489
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1492
    :cond_4
    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lio/teak/sdk/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1343
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lio/teak/sdk/e/a;->b(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1345
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
