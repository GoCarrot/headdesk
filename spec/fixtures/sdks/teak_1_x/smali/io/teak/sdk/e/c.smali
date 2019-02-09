.class public final Lio/teak/sdk/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/e/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lio/teak/sdk/e/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/teak/sdk/e/c$a;-><init>(B)V

    sput-object v0, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    .line 177
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
    .line 209
    invoke-direct {p0}, Lio/teak/sdk/e/c;-><init>()V

    .line 213
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    .line 214
    const-string v0, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->a()V

    .line 217
    :cond_1
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    .line 218
    sparse-switch v0, :sswitch_data_0

    .line 224
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->a()V

    .line 225
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v1

    .line 231
    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    .line 232
    const-string v0, "Expected a \':\' after a key"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 220
    :sswitch_0
    const-string v0, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 237
    :cond_2
    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {p0, v0}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate key \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 244
    :cond_3
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->c()Ljava/lang/Object;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_4

    .line 246
    invoke-virtual {p0, v0, v1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 252
    :cond_4
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 263
    const-string v0, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v0}, Lio/teak/sdk/e/e;->a(Ljava/lang/String;)Lio/teak/sdk/e/b;

    move-result-object v0

    throw v0

    .line 255
    :sswitch_1
    invoke-virtual {p1}, Lio/teak/sdk/e/e;->b()C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    .line 261
    :sswitch_2
    return-void

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    .line 252
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    invoke-direct {p0}, Lio/teak/sdk/e/c;-><init>()V

    .line 2402
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2406
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v5

    .line 2408
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v0

    .line 2409
    :goto_1
    array-length v6, v1

    move v3, v4

    :goto_2
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 2410
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 2411
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 2412
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2414
    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2415
    const-string v2, "getClass"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "getDeclaringClass"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2418
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2424
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2425
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2426
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2432
    :goto_4
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2433
    if-eqz v0, :cond_0

    .line 2434
    iget-object v7, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-static {v0}, Lio/teak/sdk/e/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    instance-of v2, v0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 2439
    :try_start_1
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2409
    :cond_0
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_1
    move v0, v4

    .line 2406
    goto/16 :goto_0

    .line 2408
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 2419
    :cond_3
    const-string v2, "is"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2420
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2427
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 316
    :cond_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    .line 2447
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_6
    move-object v2, v0

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lio/teak/sdk/e/e;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/teak/sdk/e/c;-><init>(Lio/teak/sdk/e/e;)V

    .line 358
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    if-nez p1, :cond_1

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    .line 287
    :cond_0
    return-void

    .line 279
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    .line 280
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_2

    .line 283
    iget-object v3, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2246
    const/4 v0, 0x0

    .line 4901
    :try_start_0
    iget-object v1, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 2248
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 2250
    if-ne v1, v2, :cond_2

    .line 2251
    invoke-direct {p0}, Lio/teak/sdk/e/c;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2253
    invoke-static {v1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2254
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 2255
    if-lez p2, :cond_0

    .line 2256
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2259
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2291
    :cond_1
    :goto_0
    const/16 v0, 0x7d

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 2292
    return-object p1

    .line 2260
    :catch_0
    move-exception v0

    .line 2261
    new-instance v2, Lio/teak/sdk/e/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to write JSONObject value for key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2293
    :catch_1
    move-exception v0

    .line 2294
    new-instance v1, Lio/teak/sdk/e/b;

    invoke-direct {v1, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2263
    :cond_2
    if-eqz v1, :cond_1

    .line 2264
    add-int v3, p3, p2

    .line 2265
    :try_start_3
    invoke-direct {p0}, Lio/teak/sdk/e/c;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2266
    if-eqz v1, :cond_3

    .line 2267
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 2269
    :cond_3
    if-lez p2, :cond_4

    .line 2270
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 2272
    :cond_4
    invoke-static {p1, v3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;I)V

    .line 2273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2274
    invoke-static {v1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2275
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 2276
    if-lez p2, :cond_5

    .line 2277
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2280
    :cond_5
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, v3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v1, v2

    .line 2285
    goto :goto_1

    .line 2281
    :catch_2
    move-exception v0

    .line 2282
    :try_start_5
    new-instance v2, Lio/teak/sdk/e/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to write JSONObject value for key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2286
    :cond_6
    if-lez p2, :cond_7

    .line 2287
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 2289
    :cond_7
    invoke-static {p1, p3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method

.method static final a(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2165
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2166
    :cond_0
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2208
    :goto_0
    return-object p0

    .line 2167
    :cond_1
    instance-of v1, p1, Lio/teak/sdk/e/d;

    if-eqz v1, :cond_3

    .line 2170
    :try_start_0
    move-object v0, p1

    check-cast v0, Lio/teak/sdk/e/d;

    move-object v1, v0

    invoke-interface {v1}, Lio/teak/sdk/e/d;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2174
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 2171
    :catch_0
    move-exception v1

    .line 2172
    new-instance v2, Lio/teak/sdk/e/b;

    invoke-direct {v2, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2174
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2175
    :cond_3
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_7

    .line 2177
    check-cast p1, Ljava/lang/Number;

    .line 3928
    if-nez p1, :cond_4

    .line 3929
    new-instance v1, Lio/teak/sdk/e/b;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3931
    :cond_4
    invoke-static {p1}, Lio/teak/sdk/e/c;->b(Ljava/lang/Object;)V

    .line 3935
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3936
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_6

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_6

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_6

    .line 3937
    :goto_2
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3938
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3940
    :cond_5
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3941
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2181
    :cond_6
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2187
    :catch_1
    move-exception v2

    invoke-static {v1, p0}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    goto/16 :goto_0

    .line 2189
    :cond_7
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 2190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2191
    :cond_8
    instance-of v1, p1, Ljava/lang/Enum;

    if-eqz v1, :cond_9

    .line 2192
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2193
    :cond_9
    instance-of v1, p1, Lio/teak/sdk/e/c;

    if-eqz v1, :cond_a

    .line 2194
    check-cast p1, Lio/teak/sdk/e/c;

    invoke-direct {p1, p0, p2, p3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto/16 :goto_0

    .line 2195
    :cond_a
    instance-of v1, p1, Lio/teak/sdk/e/a;

    if-eqz v1, :cond_b

    .line 2196
    check-cast p1, Lio/teak/sdk/e/a;

    invoke-virtual {p1, p0, p2, p3}, Lio/teak/sdk/e/a;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto/16 :goto_0

    .line 2197
    :cond_b
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 2198
    check-cast p1, Ljava/util/Map;

    .line 2199
    new-instance v1, Lio/teak/sdk/e/c;

    invoke-direct {v1, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, p0, p2, p3}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto/16 :goto_0

    .line 2200
    :cond_c
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_d

    .line 2201
    check-cast p1, Ljava/util/Collection;

    .line 2202
    new-instance v1, Lio/teak/sdk/e/a;

    invoke-direct {v1, p1}, Lio/teak/sdk/e/a;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p0, p2, p3}, Lio/teak/sdk/e/a;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto/16 :goto_0

    .line 2203
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2204
    new-instance v1, Lio/teak/sdk/e/a;

    invoke-direct {v1, p1}, Lio/teak/sdk/e/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, p2, p3}, Lio/teak/sdk/e/a;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    goto/16 :goto_0

    .line 2206
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v1, 0x0

    .line 1730
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1731
    :cond_0
    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1784
    :goto_0
    return-object p1

    .line 1739
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1741
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    move v0, v1

    move v2, v1

    .line 1742
    :goto_1
    if-ge v0, v4, :cond_6

    .line 1744
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1745
    sparse-switch v3, :sswitch_data_0

    .line 1773
    const/16 v2, 0x20

    if-lt v3, v2, :cond_3

    const/16 v2, 0x80

    if-lt v3, v2, :cond_2

    const/16 v2, 0xa0

    if-lt v3, v2, :cond_3

    :cond_2
    const/16 v2, 0x2000

    if-lt v3, v2, :cond_4

    const/16 v2, 0x2100

    if-ge v3, v2, :cond_4

    .line 1774
    :cond_3
    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1775
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1776
    const-string v5, "0000"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    invoke-virtual {p1, v5, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1777
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1742
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 1748
    :sswitch_0
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    .line 1779
    :cond_4
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 1752
    :sswitch_1
    const/16 v5, 0x3c

    if-ne v2, v5, :cond_5

    .line 1753
    invoke-virtual {p1, v8}, Ljava/io/Writer;->write(I)V

    .line 1755
    :cond_5
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 1758
    :sswitch_2
    const-string v2, "\\b"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1761
    :sswitch_3
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1764
    :sswitch_4
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1767
    :sswitch_5
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1770
    :sswitch_6
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1783
    :cond_6
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1745
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2118
    if-nez p0, :cond_1

    .line 2119
    :try_start_0
    sget-object p0, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    .line 2145
    :cond_0
    :goto_0
    return-object p0

    .line 2121
    :cond_1
    instance-of v0, p0, Lio/teak/sdk/e/c;

    if-nez v0, :cond_0

    instance-of v0, p0, Lio/teak/sdk/e/a;

    if-nez v0, :cond_0

    sget-object v0, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lio/teak/sdk/e/d;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 2125
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 2126
    check-cast p0, Ljava/util/Collection;

    .line 2127
    new-instance v0, Lio/teak/sdk/e/a;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/a;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0

    .line 2129
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2130
    new-instance v0, Lio/teak/sdk/e/a;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/a;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 2132
    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 2133
    check-cast p0, Ljava/util/Map;

    .line 2134
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0

    .line 2136
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 2137
    if-eqz v0, :cond_6

    .line 2138
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2140
    :goto_1
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "javax."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2141
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 2138
    :cond_6
    const-string v0, ""

    goto :goto_1

    .line 2143
    :cond_7
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto/16 :goto_0

    .line 2145
    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method static final a(Ljava/io/Writer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2212
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2213
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 2212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2215
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 1980
    if-eqz p0, :cond_3

    .line 1981
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 1982
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1983
    :cond_0
    new-instance v0, Lio/teak/sdk/e/b;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1986
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 1987
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1988
    :cond_2
    new-instance v0, Lio/teak/sdk/e/b;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1993
    :cond_3
    return-void
.end method

.method private c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1718
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1719
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    .line 1721
    :try_start_0
    invoke-static {p0, v0}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    .line 1724
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    .line 1726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1928
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1968
    :cond_0
    :goto_0
    return-object p0

    .line 1931
    :cond_1
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1932
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1934
    :cond_2
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1935
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1937
    :cond_3
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1938
    sget-object p0, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    goto :goto_0

    .line 1946
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1947
    const/16 v2, 0x30

    if-lt v1, v2, :cond_5

    const/16 v2, 0x39

    if-le v1, v2, :cond_6

    :cond_5
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 3850
    :cond_6
    const/16 v1, 0x2e

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_7

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_7

    const/16 v1, 0x45

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_7

    const-string v1, "-0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v0, 0x1

    .line 1951
    :cond_8
    if-eqz v0, :cond_9

    .line 1952
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 1953
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 1954
    goto :goto_0

    .line 1957
    :cond_9
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1958
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1959
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    .line 1960
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    :cond_a
    move-object p0, v0

    .line 1962
    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    const/16 v1, 0x1f4

    .line 1232
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1233
    sget-object v2, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1247
    :goto_0
    return v0

    .line 1236
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 1237
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    .line 1240
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1242
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1244
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1247
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 1580
    if-nez p1, :cond_0

    .line 1581
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :cond_0
    if-eqz p2, :cond_1

    .line 1584
    invoke-static {p2}, Lio/teak/sdk/e/c;->b(Ljava/lang/Object;)V

    .line 1585
    iget-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    :goto_0
    return-object p0

    .line 3796
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Lio/teak/sdk/e/b;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 517
    if-nez v0, :cond_1

    .line 518
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 2066
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2067
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    .line 2068
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2}, Lio/teak/sdk/e/c;->a(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2069
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    .line 2876
    iget-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 864
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1027
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1028
    sget-object v2, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 3563
    :goto_0
    return v1

    .line 1031
    :cond_0
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 1032
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 3557
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3558
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    const-string v4, "false"

    .line 3559
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    .line 3560
    goto :goto_0

    .line 3561
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast v2, Ljava/lang/String;

    const-string v1, "true"

    .line 3562
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3563
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 3565
    :cond_5
    new-instance v1, Lio/teak/sdk/e/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "JSONObject["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] is not a Boolean."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :catch_0
    move-exception v1

    move v1, v3

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 684
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 685
    :goto_0
    return v0

    .line 684
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 685
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    new-instance v1, Lio/teak/sdk/e/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONObject["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not an int."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Ljava/util/Map;
    .locals 5
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
    .line 2308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2309
    invoke-direct {p0}, Lio/teak/sdk/e/c;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2312
    :cond_0
    const/4 v1, 0x0

    .line 2320
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2313
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/teak/sdk/e/c;

    if-eqz v1, :cond_2

    .line 2314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/teak/sdk/e/c;

    invoke-virtual {v1}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 2315
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/teak/sdk/e/a;

    if-eqz v1, :cond_3

    .line 2316
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/teak/sdk/e/a;

    invoke-virtual {v1}, Lio/teak/sdk/e/a;->b()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 2318
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 2322
    :cond_4
    return-object v2
.end method

.method public final c(Ljava/lang/String;)Lio/teak/sdk/e/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 719
    instance-of v1, v0, Lio/teak/sdk/e/c;

    if-eqz v1, :cond_0

    .line 720
    check-cast v0, Lio/teak/sdk/e/c;

    return-object v0

    .line 722
    :cond_0
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a JSONObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 791
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 792
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 794
    :cond_0
    new-instance v0, Lio/teak/sdk/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONObject["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/teak/sdk/e/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not a string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 852
    sget-object v0, Lio/teak/sdk/e/c;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 955
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/teak/sdk/e/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)Lio/teak/sdk/e/c;
    .locals 2

    .prologue
    .line 1272
    invoke-virtual {p0, p1}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1273
    instance-of v1, v0, Lio/teak/sdk/e/c;

    if-eqz v1, :cond_0

    check-cast v0, Lio/teak/sdk/e/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2033
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lio/teak/sdk/e/c;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2035
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
