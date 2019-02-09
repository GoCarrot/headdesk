.class public final Lio/teak/sdk/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:J

.field private d:J

.field private e:C

.field private final f:Ljava/io/Reader;

.field private g:Z

.field private h:J


# direct methods
.method private constructor <init>(Ljava/io/Reader;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lio/teak/sdk/e/e;->f:Ljava/io/Reader;

    .line 68
    iput-boolean v1, p0, Lio/teak/sdk/e/e;->b:Z

    .line 69
    iput-boolean v1, p0, Lio/teak/sdk/e/e;->g:Z

    .line 70
    iput-char v1, p0, Lio/teak/sdk/e/e;->e:C

    .line 71
    iput-wide v2, p0, Lio/teak/sdk/e/e;->c:J

    .line 72
    iput-wide v4, p0, Lio/teak/sdk/e/e;->a:J

    .line 73
    iput-wide v2, p0, Lio/teak/sdk/e/e;->h:J

    .line 74
    iput-wide v4, p0, Lio/teak/sdk/e/e;->d:J

    .line 75
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/teak/sdk/e/e;-><init>(Ljava/io/Reader;)V

    .line 92
    return-void
.end method

.method private a(C)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    :goto_0
    invoke-direct {p0}, Lio/teak/sdk/e/e;->d()C

    move-result v1

    .line 307
    sparse-switch v1, :sswitch_data_0

    .line 348
    if-ne v1, p1, :cond_0

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :sswitch_0
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 313
    :sswitch_1
    invoke-direct {p0}, Lio/teak/sdk/e/e;->d()C

    move-result v1

    .line 314
    sparse-switch v1, :sswitch_data_1

    .line 344
    const-string v0, "Illegal escape."

    invoke-virtual {p0, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 316
    :sswitch_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    :sswitch_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 322
    :sswitch_4
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 325
    :sswitch_5
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :sswitch_6
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :sswitch_7
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, v1}, Lio/teak/sdk/e/e;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string v1, "Illegal escape."

    .line 2503
    new-instance v2, Lio/teak/sdk/e/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/teak/sdk/e/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    throw v2

    .line 341
    :sswitch_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 314
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x5c -> :sswitch_8
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method private a(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 264
    new-array v3, v4, [C

    move v2, v1

    .line 267
    :goto_0
    if-ge v2, v4, :cond_2

    .line 268
    invoke-direct {p0}, Lio/teak/sdk/e/e;->d()C

    move-result v0

    aput-char v0, v3, v2

    .line 2148
    iget-boolean v0, p0, Lio/teak/sdk/e/e;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/teak/sdk/e/e;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 269
    :goto_1
    if-eqz v0, :cond_1

    .line 270
    const-string v0, "Substring bounds error"

    invoke-virtual {p0, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    :cond_0
    move v0, v1

    .line 2148
    goto :goto_1

    .line 272
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private d()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0xd

    const/4 v0, 0x0

    const-wide/16 v4, 0x1

    .line 188
    iget-boolean v1, p0, Lio/teak/sdk/e/e;->g:Z

    if-eqz v1, :cond_0

    .line 189
    iput-boolean v0, p0, Lio/teak/sdk/e/e;->g:Z

    .line 190
    iget-char v1, p0, Lio/teak/sdk/e/e;->e:C

    .line 198
    :goto_0
    if-gtz v1, :cond_1

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/teak/sdk/e/e;->b:Z

    .line 204
    :goto_1
    return v0

    .line 193
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/teak/sdk/e/e;->f:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Lio/teak/sdk/e/b;

    invoke-direct {v1, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1213
    :cond_1
    if-lez v1, :cond_2

    .line 1214
    iget-wide v2, p0, Lio/teak/sdk/e/e;->c:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/teak/sdk/e/e;->c:J

    .line 1215
    if-ne v1, v6, :cond_3

    .line 1216
    iget-wide v2, p0, Lio/teak/sdk/e/e;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/teak/sdk/e/e;->d:J

    .line 1217
    iget-wide v2, p0, Lio/teak/sdk/e/e;->a:J

    iput-wide v2, p0, Lio/teak/sdk/e/e;->h:J

    .line 1218
    iput-wide v8, p0, Lio/teak/sdk/e/e;->a:J

    .line 203
    :cond_2
    :goto_2
    int-to-char v0, v1

    iput-char v0, p0, Lio/teak/sdk/e/e;->e:C

    .line 204
    iget-char v0, p0, Lio/teak/sdk/e/e;->e:C

    goto :goto_1

    .line 1219
    :cond_3
    const/16 v0, 0xa

    if-ne v1, v0, :cond_5

    .line 1220
    iget-char v0, p0, Lio/teak/sdk/e/e;->e:C

    if-eq v0, v6, :cond_4

    .line 1221
    iget-wide v2, p0, Lio/teak/sdk/e/e;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/teak/sdk/e/e;->d:J

    .line 1222
    iget-wide v2, p0, Lio/teak/sdk/e/e;->a:J

    iput-wide v2, p0, Lio/teak/sdk/e/e;->h:J

    .line 1224
    :cond_4
    iput-wide v8, p0, Lio/teak/sdk/e/e;->a:J

    goto :goto_2

    .line 1226
    :cond_5
    iget-wide v2, p0, Lio/teak/sdk/e/e;->a:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/teak/sdk/e/e;->a:J

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/teak/sdk/e/b;
    .locals 3

    .prologue
    .line 492
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/teak/sdk/e/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    .line 102
    iget-boolean v0, p0, Lio/teak/sdk/e/e;->g:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/teak/sdk/e/e;->c:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lio/teak/sdk/e/b;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_1
    iget-wide v0, p0, Lio/teak/sdk/e/e;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/teak/sdk/e/e;->c:J

    .line 1115
    iget-char v0, p0, Lio/teak/sdk/e/e;->e:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lio/teak/sdk/e/e;->e:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1116
    :cond_2
    iget-wide v0, p0, Lio/teak/sdk/e/e;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/teak/sdk/e/e;->d:J

    .line 1117
    iget-wide v0, p0, Lio/teak/sdk/e/e;->h:J

    iput-wide v0, p0, Lio/teak/sdk/e/e;->a:J

    .line 106
    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/teak/sdk/e/e;->g:Z

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/teak/sdk/e/e;->b:Z

    .line 108
    return-void

    .line 1118
    :cond_4
    iget-wide v0, p0, Lio/teak/sdk/e/e;->a:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 1119
    iget-wide v0, p0, Lio/teak/sdk/e/e;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/teak/sdk/e/e;->a:J

    goto :goto_0
.end method

.method public final b()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 284
    :cond_0
    invoke-direct {p0}, Lio/teak/sdk/e/e;->d()C

    move-result v0

    .line 285
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 286
    :cond_1
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    .line 413
    sparse-switch v0, :sswitch_data_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 436
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {p0}, Lio/teak/sdk/e/e;->d()C

    move-result v0

    goto :goto_0

    .line 416
    :sswitch_0
    invoke-direct {p0, v0}, Lio/teak/sdk/e/e;->a(C)Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_1
    return-object v0

    .line 418
    :sswitch_1
    invoke-virtual {p0}, Lio/teak/sdk/e/e;->a()V

    .line 419
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/c;-><init>(Lio/teak/sdk/e/e;)V

    goto :goto_1

    .line 421
    :sswitch_2
    invoke-virtual {p0}, Lio/teak/sdk/e/e;->a()V

    .line 422
    new-instance v0, Lio/teak/sdk/e/a;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/a;-><init>(Lio/teak/sdk/e/e;)V

    goto :goto_1

    .line 439
    :cond_0
    invoke-virtual {p0}, Lio/teak/sdk/e/e;->a()V

    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 445
    :cond_1
    invoke-static {v0}, Lio/teak/sdk/e/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/teak/sdk/e/e;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/teak/sdk/e/e;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/teak/sdk/e/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
