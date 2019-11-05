using my.bookshop as my from '../db/data-model';

service StatsService {
    @readonly entity OrderInfo as projection on my.Orders excluding {
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        country
    }
}
